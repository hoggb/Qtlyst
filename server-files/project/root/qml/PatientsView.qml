import QtQuick 2.11



Item{
    id: rootItem

    //add IDS to all objects and pass to get request
    //on the server side we can decide which object to render
    //based on this.  We will need to make this function global
    //to another modelview for just one patient
    function returnDummyData(){
        return [
            {name: "Bret", id: "4354543452"},
            {name: "Bill", id: "5355462562"},
            {name: "Bob", id: "5554446666"},
            {name: "Ben", id: "4686357357"},
            {name: "Barb", id: "9582910394"},
            {name: "Blob", id: "6829109681"},
            {name: "Bing", id: "6819481043"},
            {name: "Bong", id: "7859027105"},
        ];
    }

    Column{
        id: c1
        Repeater{
            model: returnDummyData().length / 2;
            Rectangle{
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
                    text: "Name: " + rootItem.returnDummyData()[index]["name"]
                           +  "\nId: " + rootItem.returnDummyData()[index]["id"]

                }

                Image{
                    id: scope
                    width: parent.width
                    height: 50

                    anchors.top: patient.bottom
                    source: "../static/images/Arbitrary_Waveform_1.jpg"
                }
            }




        }
        spacing: 50
    }

    Column{
        id: c2
        Repeater{
            model: returnDummyData().length / 2;
            Rectangle{
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
                    text: "Name: " + rootItem.returnDummyData()[index+returnDummyData().length / 2]["name"]
                           +  "\nId: " + rootItem.returnDummyData()[index+returnDummyData().length / 2]["id"]

                }

                Image{
                    id: scopec2
                    width: parent.width
                    height: 50

                    anchors.top: patientc2.bottom
                    source: "../static/images/Arbitrary_Waveform_1.jpg"
                }
            }




        }
        spacing: 50
    }

}


