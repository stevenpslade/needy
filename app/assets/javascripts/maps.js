  // var that sets location
  var myLatLng = {lat: 49.264, lng: -123.168};
  var info;

  function contentBox(taskTitle, taskDescription) {
    return '<div id="content">'+
        '<div id="siteNotice">'+
        '</div>'+
        '<h1 id="firstHeading" class="firstHeading">' + taskTitle + '</h1>'+
        '<div id="bodyContent">'+
        '<p>'+ taskDescription +'</p>'+
        '</div>'+
        '</div>';
  }

  function initMap() {

    map = new google.maps.Map(document.getElementById('map'), {
      center: myLatLng,
      zoom: 13
    });


    //geolocation: shows current location or error saying it did not work
    if (window.location.pathname == '/map/tasks') {

    var infoWindow = new google.maps.InfoWindow({map: map});
    
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
          var pos = {
            lat: position.coords.latitude,
            lng: position.coords.longitude
          };

            youAreHere = new google.maps.Marker({
              position: pos,
              icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
              map: map,
              title: 'You Are Here'
            });

            // adds circle radius around marker
            var circle = new google.maps.Circle({
              map: map,
              radius: 1609,    // 10 miles in metres
              fillColor: '#AA0000'
            });
            circle.bindTo('center', youAreHere, 'position');

          infoWindow.setPosition(pos);
          infoWindow.setContent('You Are Here');
          map.setCenter(pos);
        }, function() {
          handleLocationError(true, infoWindow, map.getCenter());
        });
      } else {
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
      }

    }

    var geocoder = new google.maps.Geocoder();

    gon.watch('tasks', function(tasks) {
      // if (window.location.pathname == '/map/tasks') {
      if (tasks.length >= 1) {
        tasks.forEach(function(task) {
          popUp = contentBox(task.title, task.description);
          address = task.location;
          geocodeAddress(geocoder, map, address, popUp);
        });
      } else {
        popUp = contentBox(tasks.title, tasks.description);
        address = tasks.location;
        geocodeAddress(geocoder, map, address, popUp);
      }
    });
  }


  //geocode to search by address rather that coordiantes
  function geocodeAddress(geocoder, resultsMap, address, popUp) {
    // var address will be set to whatever the address of the task is (task.address)
    // will then to make the result of the search a location of a marker
    var address = address;
    geocoder.geocode({'address': address}, function(results, status) {
      if (status === google.maps.GeocoderStatus.OK) {
        resultsMap.setCenter(results[0].geometry.location);
        // marker of result
        var marker = new google.maps.Marker({
          map: resultsMap,
          position: results[0].geometry.location,
          animation: google.maps.Animation.DROP,
          title: 'Need this?'
        });
        marker.addListener('click', function() {
          info = new google.maps.InfoWindow({
            content: popUp
          });
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