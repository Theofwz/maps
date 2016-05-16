function initNetworkMap() {
  var map = new google.maps.Map(document.getElementById('network-map'), {
    zoom: 3,
    center: {lat: 0, lng: -180},
    mapTypeId: google.maps.MapTypeId.TERRAIN
  });

  var flightPlanCoordinates = [
    {lat: 37.772, lng: -122.214},
    {lat: 21.291, lng: -157.821},
    {lat: -18.142, lng: 178.431},
    {lat: -27.467, lng: 153.027},
    {lat: 41.878, lng: -87.629},
    {lat: 40.714, lng: -74.005},
    {lat: 34.052, lng: -118.243},
    {lat: 49.25, lng: -123.1}
  ];
  var flightPath = new google.maps.Polyline({
    path: flightPlanCoordinates,
    geodesic: true,
    strokeColor: '#FF0000',
    strokeOpacity: 1.0,
    strokeWeight: 2
  });

  flightPath.setMap(map);
}
google.maps.event.addDomListener(window, 'load', initNetworkMap);