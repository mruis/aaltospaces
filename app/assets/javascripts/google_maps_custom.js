function gmap_show(company) {
  company = JSON.parse(company);
  if (company == null) {
    showMainBuildingView();
  } else {
    showDefinedBuildingView(company);
  }
}

function showMainBuildingView() {
  handler = Gmaps.build('Google');
  handler.buildMap(
    { 
      provider: {}, 
      internal: {id: 'map'}
    }, 
    function() {
      markers = handler.addMarkers([
        {
        "lat": 60.185921,
        "lng": 24.827158,
        "infowindow": "<b> Päärakennus </b> <br> Otakaari 1"
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(15);
  });  
}

function showDefinedBuildingView(company) {
  handler = Gmaps.build('Google');
  handler.buildMap(
    { 
      provider: {}, 
      internal: {id: 'map'}
    }, 
    function() {
      markers = handler.addMarkers([
        {
        "lat": company.lat,
        "lng": company.lng,
        "infowindow": "<b>" + company.name + "</b> <br>" + company.address
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(15);
  });
}