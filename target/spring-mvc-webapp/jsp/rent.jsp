
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


        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/rent.css">

        <script>
            var contextRoot = "${pageContext.request.contextPath}";
        </script>

    </head>
    <body>
        <%@ include file="navbar.jsp" %>

        <!--<div class="container">-->



        <!--<div class="col-md-6" id="map">-->




        <!--<div id="map"></div>-->
        <!--</div>-->

        <div class="col-md-3"></div>
        <!--<div class="col-md-6" id="right">-->
        <div class="col-md-6">
            <div class="text-center">
                <!--                <input id="address" type="textbox" value="">
                                <button id='submit' type="submit">Search</button>-->

                <form method="GET">
                    <input id="address" type="text">
                    <select id="radius">
                        <option>25</option>
                        <option>35</option>
                        <option>50</option>

                    </select>
                    <button id='searchRadius' type="submit">Search</button>

                </form>
            </div>
            <c:forEach items="${rentals}" var="r">
                <a href="${pageContext.request.contextPath}/rent/${r.id}">
                    <div>
                        <c:forEach items="${r.imagePaths}" var="z" begin="0" end="0" varStatus="loop">
                            <img src="<c:out value="${z}"/>" height="125px" width="125px" />
                        </c:forEach>



                        <!--<img src="${pageContext.request.contextPath}/uploads/138_arlington.jpg" height="125px" width="125px" />-->




                        ${r.streetAddress} ${r.streetName}
                        ${r.city} ${r.state} ${r.zip}
                    </div>
                </a>
                <hr>
            </c:forEach>
        </div>
        <div class="col-md-3"></div>

    </div>





    <!-- Placed at the end of the document so the pages load faster -->
    <!--<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</body>
</html>

