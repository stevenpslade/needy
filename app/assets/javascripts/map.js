// var that sets location
var myLatLng = {lat: 49.264, lng: -123.168};
var info;
var map;

function initMap() {

  map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 10
  });
  // content to show in marker on click
  //this will be filled with task description etc.
  var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Task</h1>'+
      '<div id="bodyContent">'+
      '<p>This is a task, click to see it!</p>'+
      '</div>'+
      '</div>';

  // the actual info window that shows on click
  info = new google.maps.InfoWindow({
    content: contentString
  });

  var marker = new google.maps.Marker({
    // position: myLatLng,
    animation: google.maps.Animation.DROP,
    map: map,
    title: 'Need this?'
  });
  marker.addListener('click', function() {
    info.open(map, marker);
  });

  // adds circle radius around marker
  var circle = new google.maps.Circle({
  map: map,
  radius: 1609,    // 10 miles in metres
  fillColor: '#AA0000'
  });
  circle.bindTo('center', marker, 'position');

  var infoWindow = new google.maps.InfoWindow({map: map});

  //geolocation: shows current location or error saying it did not work
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };

      var youAreHere = new google.maps.Marker({
        position: pos,
        animation: google.maps.Animation.DROP,
        icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
        map: map,
        title: 'You Are Here'
      });

      infoWindow.setPosition(pos);
      infoWindow.setContent('Location found.');
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  } else {
    // Browser doesn't support Geolocation
    handleLocationError(false, infoWindow, map.getCenter());
  }
    var geocoder = new google.maps.Geocoder();

  // document.getElementById('submit').addEventListener('click', function() {
  //   geocodeAddress(geocoder, map);
  // });

  document.getElementById('submit').addEventListener('click', function() {
    gon.tasks.forEach(function(task) {
      address = task.location;
      geocodeAddress(geocoder, map, address);
    });
  });

}


//geocode to search by address rather that coordiantes
function geocodeAddress(geocoder, resultsMap, address) {
  // var address will be set to whatever the address of the task is (task.address)
  // will then to make the result of the search a location of a marker
  var address = address;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      // marker of result
      marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location,
        animation: google.maps.Animation.DROP,
        title: 'Need this?'
      });
      marker.addListener('click', function() {
        info.open(map, this);
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });

}
// this handels if geolocation does not work
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
    'Error: The Geolocation service failed.' :
    'Error: Your browser doesn\'t support geolocation.');
}
