/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    $('#searchRadius').on('click', function (e) {



        $.ajax({
            url: contextRoot + "/map/radius",
            type: "GET",
            data: data,
            dataType: 'json',
            beforeSend: function (xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-type", "application/json");
            },
            success: function (data, status) {
                console.log(data);
                window.location = contextRoot + "/rent/rentals?lat=" + data.lat + "&lng=" + data.lng + "&rad=" + data.rad + "&minBath=" + minBath + "&maxBath=" + maxBath;

            },
            error: function (data, status) {
                alert("bad api call");
                console.log(status);
            }
        });

    });

});