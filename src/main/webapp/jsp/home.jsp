
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <!-- Bootstrap core CSS -->

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>-->
        <!--        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
                <script   src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"   integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="   crossorigin="anonymous"></script>-->
        <!--<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>-->


         <script>
            var contextRoot = "${pageContext.request.contextPath}";
        </script>
    </head>
    <body>
        <!--<div class="container">-->
        <%@ include file="navbar.jsp" %>

        <div class="main">
            <div class="main-section">
                <div class="property-section">
                    <h2>Find a Property</h2>
                    <div class="property-bottom">
                        <form method="GET">
                            <!--<input type="text" name="Name" placeholder="Search for real estate in..." required>-->
                            <input class="controls" type="text" id="address"
                                   placeholder="Enter a location">
                            <div class="select-section">
                                <div class="select-left">
                                    <select class="sel" id="sel">
                                        <option value="1" selected="selected">For Rent</option>
                                        <option value="2">For Sale</option>
                                    </select>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <!---->	
                            <br />
                            <br />
                            <br />
                            <input type="submit" id='searchRadius' value="Find property" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div id="map"></div>
        <!-- Placed at the end of the document so the pages load faster -->
        <!--<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>-->
        <!--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>-->
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>-->

        <script>
            function initMap() {

                var input = /** @type {!HTMLInputElement} */(
                        document.getElementById('address'));


                var autocomplete = new google.maps.places.Autocomplete(input);

                    };

        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEqFPxjP_ubeG9tLbj3P0aHUoqNi35rts&libraries=places&callback=initMap"
        async defer></script>
<!--        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places&callback=initMap"
        async defer></script>-->

    </body>
</html>

