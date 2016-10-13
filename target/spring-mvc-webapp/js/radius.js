/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


    $('#searchRadius').on('click', function (e) {

        var lati;
        var lng;
        var address = $('#address').val();
        var rad = $('#radius').val();


        e.preventDefault();


        $.ajax({
            type: "GET",
            url: "http://www.mapquestapi.com/geocoding/v1/address?key=LIhb6pFxB7qAlFC4Aiul9rM9i7R5BcgB&location=" + address,
            beforeSend: function (xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-type", "application/json");
            },
            success: function postForm(response) {
                lati = response.results[0].locations[0].latLng.lat;
                lng = response.results[0].locations[0].latLng.lng;

                console.log(lati, lng, rad);

                var data = JSON.stringify({
                    lat: lati,
                    lng: lng,
                    rad: rad
                });

                $.ajax({
                    url: contextRoot + "/map/radius",
                    type: "POST",
                    data: data,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("Accept", "application/json");
                        xhr.setRequestHeader("Content-type", "application/json");
                    },
                    success: function (data, status) {
                        console.log(data);
                        window.location = contextRoot + "/rent/" + data.lat + "/" + data.lng + "/" + data.rad;

                    },
                    error: function (data, status) {
                        alert("bad api call");
                        console.log(status);
                    }
                });
            },
            error: function (data, status) {
//                    alert("geo error");
                console.log(data.errors);
            }}
        );
    });
});