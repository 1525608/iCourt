﻿function init_map() {
    var myOptions = {
        zoom: 16, center: new google.maps.LatLng(4.9473657, 114.94736020000005),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }; map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
    marker = new google.maps.Marker(
        {
            map: map,
            position: new google.maps.LatLng(4.9473657, 114.94736020000005)
        });
    infowindow = new google.maps.InfoWindow({ content: '<strong>iCourt</strong><br>kg serusop, brunei<br>' }); google.maps.event.addListener(marker, 'click', function () { infowindow.open(map, marker); }); infowindow.open(map, marker);
} google.maps.event.addDomListener(window, 'load', init_map);