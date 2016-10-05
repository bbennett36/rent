/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//AIzaSyDEvcxydB5IJb0zNk0z4Gdg1o8KtvhJarM

//var map;
//function initMap() {
//    var styledMapType = new google.maps.StyledMapType(
//            [
//                {
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#ebe3cd"
//                        }
//                    ]
//                },
//                {
//                    "elementType": "labels.text.fill",
//                    "stylers": [
//                        {
//                            "color": "#523735"
//                        }
//                    ]
//                },
//                {
//                    "elementType": "labels.text.stroke",
//                    "stylers": [
//                        {
//                            "color": "#f5f1e6"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "administrative",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "visibility": "off"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "administrative",
//                    "elementType": "geometry.stroke",
//                    "stylers": [
//                        {
//                            "color": "#c9b2a6"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "administrative.land_parcel",
//                    "elementType": "geometry.stroke",
//                    "stylers": [
//                        {
//                            "color": "#dcd2be"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "administrative.land_parcel",
//                    "elementType": "labels.text.fill",
//                    "stylers": [
//                        {
//                            "color": "#ae9e90"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "landscape.natural",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#dfd2ae"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "poi",
//                    "stylers": [
//                        {
//                            "visibility": "off"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "poi",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#dfd2ae"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "poi",
//                    "elementType": "labels.text.fill",
//                    "stylers": [
//                        {
//                            "color": "#93817c"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "poi.park",
//                    "elementType": "geometry.fill",
//                    "stylers": [
//                        {
//                            "color": "#a5b076"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "poi.park",
//                    "elementType": "labels.text.fill",
//                    "stylers": [
//                        {
//                            "color": "#447530"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#f5f1e6"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road",
//                    "elementType": "geometry.fill",
//                    "stylers": [
//                        {
//                            "weight": 1
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road",
//                    "elementType": "labels.icon",
//                    "stylers": [
//                        {
//                            "visibility": "off"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road.arterial",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#fdfcf8"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road.highway",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#f8c967"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road.highway",
//                    "elementType": "geometry.stroke",
//                    "stylers": [
//                        {
//                            "color": "#e9bc62"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road.highway.controlled_access",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#e98d58"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road.highway.controlled_access",
//                    "elementType": "geometry.stroke",
//                    "stylers": [
//                        {
//                            "color": "#db8555"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "road.local",
//                    "elementType": "labels.text.fill",
//                    "stylers": [
//                        {
//                            "color": "#806b63"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "transit",
//                    "stylers": [
//                        {
//                            "visibility": "off"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "transit.line",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#dfd2ae"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "transit.line",
//                    "elementType": "labels.text.fill",
//                    "stylers": [
//                        {
//                            "color": "#8f7d77"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "transit.line",
//                    "elementType": "labels.text.stroke",
//                    "stylers": [
//                        {
//                            "color": "#ebe3cd"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "transit.station",
//                    "elementType": "geometry",
//                    "stylers": [
//                        {
//                            "color": "#dfd2ae"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "water",
//                    "stylers": [
//                        {
//                            "color": "#1a9f00"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "water",
//                    "elementType": "geometry.fill",
//                    "stylers": [
//                        {
//                            "color": "#b9d3c2"
//                        }
//                    ]
//                },
//                {
//                    "featureType": "water",
//                    "elementType": "labels.text.fill",
//                    "stylers": [
//                        {
//                            "color": "#92998d"
//                        }
//                    ]
//                }
//            ],
//            {name: 'Styled Map'});
//
//    map = new google.maps.Map(document.getElementById('map'), {
//        center: {lat: 39.7392, lng: -104.9903},
//        zoom: 11,
//        mapTypeControlOptions: {
//            mapTypeIds: [
//                'styled_map']
//        }
//    });
//
//    //Associate the styled map with the MapTypeId and set it to display.
//    map.mapTypes.set('styled_map', styledMapType);
//    map.setMapTypeId('styled_map');
//
//
//    var geocoder = new google.maps.Geocoder();
//
//    document.getElementById('submit').addEventListener('click', function () {
//        geocodeAddress(geocoder, map);
//    });
//}

var map;

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 8,
        center: {lat: -34.397, lng: 150.644}
    });

//      var json = (contextRoot + '/webapp/json/data.json'); //(with path)
//      var json = (contextRoot + '/json/data.json'); //(with path)
//
//
//    fetch(json, {
//        method: 'get'
//    })
//            .then(function (response) {
//                console.log(response);
//                console.log(contextRoot);
//                return response.json()
//            }).catch(function (err) {
//        console.log(err);
//    })
//            .then(plotMarkers);

//    $.ajax({
//        type: "GET",
//        dataType: 'json',
//        url: contextRoot + '/json/data.json',
//        beforeSend: function (xhr) {
//            xhr.setRequestHeader("Accept", "application/json");
//            xhr.setRequestHeader("Content-type", "application/json");
//        },
//        success: function (response, status, data) {
//            console.log(response);
//            console.log(data);
//
//        },
//        error: function (data, status) {
////                    alert("geo error");
//            console.log(data.errors);
//            console.log(data);
//        }});

    $.getJSON("file:///json/data.json", function (data) {
        var items = [];
        $.each(data, function (key, val) {
            items.push("<li id='" + key + "'>" + val + "</li>");
        });
       
    });

}

var markers;
var bounds;

function plotMarkers(m)
{
    markers = [];
    bounds = new google.maps.LatLngBounds();

    m.forEach(function (marker) {
        var position = new google.maps.LatLng(marker.lat, marker.lng);

        markers.push(
                new google.maps.Marker({
                    position: position,
                    map: map,
                    animation: google.maps.Animation.DROP
                })
                );

        bounds.extend(position);
    });

    map.fitBounds(bounds);
}


//var geocoder = new google.maps.Geocoder();
//
//document.getElementById('submit').addEventListener('click', function () {
//    geocodeAddress(geocoder, map);
//});

//
//
//function geocodeAddress(geocoder, resultsMap) {
//    var address = document.getElementById('address').value;
//    geocoder.geocode({'address': address}, function (results, status) {
//        if (status === 'OK') {
//            resultsMap.setCenter(results[0].geometry.location);
//            console.log(results[0].geometry.location.lat())
//            console.log(results[0].geometry.location.lng())
//            var marker = new google.maps.Marker({
//                map: resultsMap,
//                position: results[0].geometry.location
//            });
//        } else {
//            alert('Geocode was not successful for the following reason: ' + status);
//        }
//    });
//}
