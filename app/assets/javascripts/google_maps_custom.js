function gmap_show(company) {
  company = JSON.parse(company);
  if (company == null) {
    showNotFoundView();
  } else {
    showDefinedBuildingView(company);
  }
}

function showNotFoundView() {
  var latlng = new google.maps.LatLng(60.1880882,24.8367568);
  var options = {
    zoom: 15,
    center: latlng
  }
  var map = new google.maps.Map(document.getElementById("map"), options);

  var infowindow = new google.maps.InfoWindow({
    content: "<b> Space was not found </b> <br> However, right here is Smökki!"
  });


  var marker = new google.maps.Marker({
    position: latlng,
    map: map
  });

  infowindow.open(map,marker);
}

function showDefinedBuildingView(space) {
  var latlng = new google.maps.LatLng(space.lat,space.lng);
  var options = {
    zoom: 15,
    center: latlng
  }
  var map = new google.maps.Map(document.getElementById("map"), options);

  var contentText = "<b>" + space.name;
  space.code != null ? contentText += "</b> <br>" + space.code : "";
  contentText += "</b> <br>" + space.address;

  var infowindow = new google.maps.InfoWindow({
    content: contentText
  });


  var marker = new google.maps.Marker({
    position: latlng,
    map: map
  });

  infowindow.open(map,marker);
}