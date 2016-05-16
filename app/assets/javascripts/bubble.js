var citymap = {
  chicago: {
    center: {lat: 41.878, lng: -87.629},
    population: 2714856
  },
  newyork: {
    center: {lat: 40.714, lng: -74.005},
    population: 8405837
  },
  losangeles: {
    center: {lat: 34.052, lng: -118.243},
    population: 3857799
  },
  vancouver: {
    center: {lat: 49.25, lng: -123.1},
    population: 603502
  }
};

function initBubbleMap() {
  // Create the map.
  var map = new google.maps.Map(document.getElementById('bubble-map'), {
    zoom: 4,
    center: {lat: 37.090, lng: -95.712},
    mapTypeId: google.maps.MapTypeId.TERRAIN
  });

  for (var city in citymap) {
    var cityCircle = new google.maps.Circle({
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.35,
      map: map,
      center: citymap[city].center,
      radius: Math.sqrt(citymap[city].population) * 100
    });
  }
}
google.maps.event.addDomListener(window, 'load', initBubbleMap);