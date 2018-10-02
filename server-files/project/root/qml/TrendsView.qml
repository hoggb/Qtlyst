import QtQuick 2.0
import QtQuick.Controls 2.4



Item {
id: root


    //Duration and interval top row
    Row{
        property int duration: Math.floor(durations[durationCombo.currentIndex] / intervals[intervalCombo.currentIndex])
        property int durations: [15, 30, 60, 120, 240, 480, 720, 1440]
        property int intervals: [1, 5, 10, 15, 30, 60, 120, 240]
        id: topRow
        Rectangle{
            width: root.width
            height: 50
            border.width: 2
            color: "gray"
            Text{
                text: "Duration:"
                color: "white"
                anchors.right: durationCombo.x - 10
                anchors.top: (parent.height / 2) - 5
            }


            ComboBox{
                id: durationCombo
                width: 125
                height: parent.height

                model: ["15 minutes", "30 minutes", "1 hour", "2 hours", "4 hours", "8 hours", "12 hours", "24 hours"]
                anchors.right: parent.right - 300

                onCurrentIndexChanged: {
                    rpt1.itemAt(scrollView1.clickedIndex ).color = "lightgray"
                    rpt2.itemAt(scrollView1.clickedIndex ).color = "dimgray"
                    rpt3.itemAt(scrollView1.clickedIndex ).color = "dimgray"
                    rpt4.itemAt(scrollView1.clickedIndex ).color = "dimgray"
                    scrollView1.clickedIndex = 0
                    scrollView1.previousIndex = 0
                }
            }

            Text{
                text: "Interval:"
                color: "white"
                anchors.right: intervalCombo.x - 10
                anchors.top: (parent.height / 2) - 5
            }

            ComboBox{
                id: intervalCombo
                width: 125
                height: parent.height
                model: ["1 minute", "5 minutes", "10 minutes", "15 minutes", "30 minutes", "60 minutes", "2 hours", "4 hours"]
                anchors.right: parent.right - 50
                onCurrentIndexChanged: {
                    rpt1.itemAt(scrollView1.clickedIndex ).color = "lightgray"
                    rpt2.itemAt(scrollView1.clickedIndex ).color = "dimgray"
                    rpt3.itemAt(scrollView1.clickedIndex ).color = "dimgray"
                    rpt4.itemAt(scrollView1.clickedIndex ).color = "dimgray"
                    scrollView1.clickedIndex = 0
                    scrollView1.previousIndex = 0
                }
            }
        }

    }

    //Parameters
    Column{
        id: c1
        anchors.top: topRow.bottom
        Row{
            Rectangle{
                width: 200
                height: 20
                border.width: 1
                border.color: "black"
                color: "lightgray"
                Text{
                    text: "Parameters"
                    color: "white"
                }
            }
        }

        Row{
            Rectangle{
                width: 200
                height: 20
                border.width: 1
                border.color: "black"
                color: "dimgray"
                Text{
                    text: "Vitals"
                    color: "white"
                }
            }
        }

        Row{
            Rectangle{
                width: 200
                height: 20
                border.width: 1
                border.color: "black"
                color: "dimgray"
                Text{
                    text: "ST"
                    color: "white"
                }
            }
        }

        Row{
            Rectangle{
                width: 200
                height: 20
                border.width: 1
                border.color: "black"
                color: "dimgray"
                Text{
                    text: "Hemodynamics"
                    color: "white"
                }
            }
        }
    }

    //Data
    ScrollView{
    id: scrollView1
    property bool selected: false
    property int clickedIndex: 0
    property int previousIndex: 0

    anchors.left: c1.right
    anchors.top: topRow.bottom
    width: parent.width - 200
    Item{
        id: item1
        Column{
        id: c2






        Row{

            anchors.top: topRow.bottom
            anchors.left: c1.right
            id: r1
            Repeater{
                id: rpt1
                model: topRow.duration
                Rectangle{
                    id: rect1
                    width: 75
                    height: 20
                    border.width: 1
                    border.color: "black"
                    color: "lightgray"
                    Text{
                        text: index
                        color: "white"
                        anchors.centerIn: parent
                    }

                    MouseArea{
                        anchors.fill: parent

                        onClicked: {
                           scrollView1.clickedIndex = index
                           if(rpt1.itemAt(scrollView1.clickedIndex).color == "#d3d3d3"){
                               //clear previous
                               rpt1.itemAt(scrollView1.previousIndex).color = "lightgray"
                               rpt2.itemAt(scrollView1.previousIndex).color = "dimgray"
                               rpt3.itemAt(scrollView1.previousIndex).color = "dimgray"
                               rpt4.itemAt(scrollView1.previousIndex).color = "dimgray"


                               rpt1.itemAt(scrollView1.clickedIndex).color = "orange"
                               rpt2.itemAt(scrollView1.clickedIndex).color = "orange"
                               rpt3.itemAt(scrollView1.clickedIndex).color = "orange"
                               rpt4.itemAt(scrollView1.clickedIndex).color = "orange"
                               scrollView1.previousIndex = index

                           }else if(rpt1.itemAt(scrollView1.clickedIndex).color == "#ffa500"){
                               rpt1.itemAt(scrollView1.clickedIndex).color = "lightgray"
                               rpt2.itemAt(scrollView1.clickedIndex).color = "dimgray"
                               rpt3.itemAt(scrollView1.clickedIndex).color = "dimgray"
                               rpt4.itemAt(scrollView1.clickedIndex).color = "dimgray"

                           }
                        }
                    }
                }

            }




        }

        Row{
            id: r2
            anchors.top: r1.bottom
            anchors.left: c1.right
            Repeater{
                id: rpt2
                model: topRow.duration
                Rectangle{
                    id: rect2
                    width: 75
                    height: 20
                    border.width: 1
                    border.color: "black"
                    color: "dimgrey"

                }

            }

        }

        Row{
            id: r3
            anchors.top: r2.bottom
            anchors.left: c1.right
            Repeater{
                id: rpt3
                model: topRow.duration
                Rectangle{
                    width: 75
                    height: 20
                    border.width: 1
                    border.color: "black"
                    color: "dimgrey"

                }

            }


        }

        Row{
        id: r4
        anchors.top: r3.bottom
        anchors.left: c1.right
        Repeater{
            id: rpt4
            model: topRow.duration
            Rectangle{
                width: 75
                height: 20
                border.width: 1
                border.color: "black"
                color: "dimgrey"

            }

        }


    }


    }
    }
}





}





