import QtQuick 2.0



Item{
    id: rootItem

    //add IDS to all objects and pass to get request
    //on the server side we can decide which object to render
    //based on this.  We will need to make this function global
    //to another modelview for just one patient
    function returnDummyData(){
        return [
            {name: "Bret", number: "435-454-3452"},
            {name: "Bill", number: "535-546-2562"},
            {name: "Bob", number: "555-444-6666"},

        ];
    }

    Column{
        id: c1
        Repeater{
            model: returnDummyData().length;
            Rectangle{
                width: rootItem.width; height: rootItem.height / returnDummyData().length;
                color: "transparent"
                border.width: 5

                Text{
                    anchors.centerIn: parent;
                    text: rootItem.returnDummyData()[index]["name"]
                           +  " " + rootItem.returnDummyData()[index]["number"]

                }
            }


        }
    }




}
