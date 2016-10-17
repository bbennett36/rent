/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


    $('#submitListing').on('click', function (e) {

        var lati;
        var lng;
        var address = $('#streetAddress').val() + " " + $('#streetName').val() + " " + $('#city').val() + " " + $('#state').val() + " " + $('#zip').val();


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
                console.log(lati, lng);
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

                $.ajax({
                    url: contextRoot + "/list/create",
                    type: "POST",
                    data: listData,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("Accept", "application/json");
                        xhr.setRequestHeader("Content-type", "application/json");
//                codeAddress();
                    },
                    success: function (data, status) {
                        console.log(data);
                window.location = contextRoot + "/list/" + data.id;

                    },
                    error: function (data, status) {
                        alert("bad post");
                        console.log(data.errors);
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