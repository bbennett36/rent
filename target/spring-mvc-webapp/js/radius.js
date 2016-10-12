/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


    $('#searchRadius').on('click', function (e) {

        var lati;
        var lng;
        var rad = 30;
        var address = $('#address').val();


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

                $.ajax({
                    url: contextRoot + "/map/radius",
                    type: "GET",
                    data: {"lati": lati, "lng": lng, "rad":rad }
//                    beforeSend: function (xhr) {
//                        xhr.setRequestHeader("Accept", "application/json");
//                        xhr.setRequestHeader("Content-type", "application/json");
////                codeAddress();
//                    },
//                    success: function (data, status) {
////                        console.log(data);
////                window.location = contextRoot + "/list/" + data.id;
//
//                    },
//                    error: function (data, status) {
//                        alert("bad api call");
//                        console.log(data);
//                        console.log(status);
//                    }
                });
            },
            error: function (data, status) {
//                    alert("geo error");
                console.log(data.errors);
            }}
        );
    });
});