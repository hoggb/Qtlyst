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

function returnByID(id){
    var name;
    returnDummyData().forEach(function(element){
      if(element["id"] == id){

          name = element["name"];
      }
    });
    return name;
}

function getRequest(server, url, id){
    const Http = new XMLHttpRequest();
    const URL = "http://" + server + "/" + url + "/" + id;
    window.location.assign(URL);
}

