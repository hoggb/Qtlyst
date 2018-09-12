import QtQuick 2.11
import "dummydata.js" as Patients


Item{
    id: rootItem

    Rectangle{
        id: container
        width: rootItem.width; height: 200;
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
            text: "Name: " + "\nId"
        }


        Image{
            id: scope
            width: rootItem.width * 2
            height: 50

            anchors.top: patient.bottom
            source: "../static/images/Arbitrary_Waveform_1.jpg"
        }


    }

}
