
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>For Rent</title>
        <!-- Bootstrap core CSS -->

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

        <script>
            var contextRoot = "${pageContext.request.contextPath}";
        </script>

    </head>
    <body>
        <%@ include file="navbar.jsp" %>

        <!--<div class="container">-->

        <div>
            <input id="address" type="textbox" value="">
            <button id='submit' type="submit">Search</button>
        </div>

        <div class="col-md-6" id="map">




            <!--<div id="map"></div>-->
        </div>
        <div class="col-md-6">

            <c:forEach items="${rentals}" var="r">
                <div>
                    <a href="${pageContext.request.contextPath}/rent/${r.id}">${r.streetAddress} ${r.streetName}</a>
                    <br />
                    <p>${r.city} ${r.state} ${r.zip}</p> 
                </div>
                <hr>
            </c:forEach>


        </div>





        <!-- Placed at the end of the document so the pages load faster -->
        <!--<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>-->
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>

