function initClusterMap() {
  var center = new google.maps.LatLng(37.4419, -122.1419);

  var map = new google.maps.Map(document.getElementById('cluster-map'), {
    zoom: 3,
    center: center,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  var markers = [];
  for (var i = 0; i < 100; i++ ) {
    var dataPhoto = data.photos[i];
    var LatLng = new google.maps.LatLng(dataPhoto.latitude, dataPhoto.longitude);
    var marker = new google.maps.Marker({
      position: LatLng
    });
    console.log(dataPhoto);
    markers.push(marker);
  }
  var markerCluster = new MarkerClusterer(map, markers);
}
google.maps.event.addDomListener(window, 'load', initClusterMap);