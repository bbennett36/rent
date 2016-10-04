/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {


    $('#submitListing').on('click', function (e) {

        var lati;
        var lng;
        var listData = JSON.stringify({
            rent: $('#rent').val(),
            streetAddress: $('#streetAddress').val(),
            streetName: $('#streetName').val(),
            city: $('#city').val(),
            state: $('#state').val(),
            zip: $('#zip').val(),
            mjFriendly: $('#mjFriendly').val(),
            growGriendly: $('#growFriendly').val(),
            lat: lati,
            lon: lng
        });
//        e.preventDefault();
        $.ajax({
            url: contextRoot + "/list/create",
            type: "POST",
            data: listData,
            dataType: 'json',
            beforeSend: function (xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-type", "application/json");
                var address = $('#streetAddress').val() + " " + $('#streetName').val() + " " + $('#city').val() + " " + $('#state').val() + " " + $('#zip').val();
//                codeAddress();
            },
            success: function codeAddress(lati, lng, address) {
                $.ajax({
                    type: "GET",
                    url: "http://www.mapquestapi.com/geocoding/v1/address?key=LIhb6pFxB7qAlFC4Aiul9rM9i7R5BcgB&location=" + address,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("Accept", "application/json");
                        xhr.setRequestHeader("Content-type", "application/json");
                    },
                    success: function (response, status) {
                        alert("OK"); //alerts OK, but NONE of the followinng
                        lati = response.results[0].locations[0].latLng.lat;
                        lng = response.results[0].locations[0].latLng.lng;
                        console.log(lati, lng);
                        window.location = contextRoot;

                    },
                    error: function (data, status) {
//                    alert("geo error");
                        console.log(data.errors);
                    }});
            },
//            
//            function (data, status) {
////                window.location = contextRoot;
//            },
            error: function (data, status) {
                alert("bad post");
                console.log(data.errors);
            }
        });
    });
});

