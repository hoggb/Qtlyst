import QtQuick 2.11
import QtQuick.Controls 1.4
import "dummydata.js" as Patients


Item{
    id: rootItem




    Column{
        id: c1
        Repeater{
            model: Patients.returnDummyData().length / 2;
            Rectangle{
                id: container
                width: (rootItem.width / 2) - 20; height: 200;
                color: "black"
                opacity: .7
                border.color: "black"
                border.width: 5
                radius: 10

                Text{
                    id: patient
                    anchors.centerIn: parent;
                    color: "red"
                    font.bold: true
                    text: "Name: " + Patients.returnDummyData()[index]["name"]
                           +  "\nId: " + Patients.returnDummyData()[index]["id"]
                }

                Image{
                    id: scope
                    width: parent.width
                    height: 50

                    anchors.top: patient.bottom
                    source: "../static/images/Arbitrary_Waveform_1.jpg"
                }

                MouseArea{
                    anchors.fill: container
                    onClicked: {Patients.getRequest("localhost:3000", "monitor/patients", Patients.returnDummyData()[index]["id"].toString())}
                    onEntered: container.color = "blue"
                    onExited: container.color = "black"
                }
            }

        }
        spacing: 50
    }

    Column{
        id: c2
        Repeater{
            model: Patients.returnDummyData().length / 2;
            Rectangle{
                id: container2
                width: (rootItem.width / 2) - 20; height: 200;
                x: rootItem.width / 2
                color: "black"
                opacity: .7
                border.color: "black"
                border.width: 5
                radius: 10

                Text{
                    id: patientc2
                    anchors.centerIn: parent;
                    color: "red"
                    font.bold: true
                    text: "Name: " + Patients.returnDummyData()[index+Patients.returnDummyData().length / 2]["name"]
                           +  "\nId: " + Patients.returnDummyData()[index+Patients.returnDummyData().length / 2]["id"]

                }

                Image{
                    id: scopec2
                    width: parent.width
                    height: 50

                    anchors.top: patientc2.bottom
                    source: "../static/images/Arbitrary_Waveform_1.jpg"
                }

                MouseArea{
                    anchors.fill: container2
                    onClicked: {Patients.getRequest("localhost:3000", "monitor/patients", Patients.returnDummyData()[index+Patients.returnDummyData().length / 2]["id"].toString())}
                    onEntered: container2.color = "blue"
                    onExited: container2.color = "black"
                }
            }

        }
        spacing: 50
    }

}


