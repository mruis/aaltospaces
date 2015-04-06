function gmap_show(company) {
  company = JSON.parse(company);

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
        "infowindow": "<b>" + company.name + "</b> " + ", laita lissää dataa google_maps_custom.js:ään"
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(15);
  });
}