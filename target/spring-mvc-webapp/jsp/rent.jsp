
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


        <div class="container">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-center">
                        <form method="GET" action="${pageContext.request.contextPath}/rent/rentals">
                            <input id="address" type="text">
                            <input id="minBath" name="minPrice" type="text" placeholder="Min. Price" />
                            <input id="maxBath" name="maxPrice" type="text" placeholder="Max. Price" />
                            <select id="radius">
                                <option>25</option>
                                <option>35</option>
                                <option>50</option>
                            </select>
                            <input type="hidden" id="sel" value="1" />
                            <button id='searchRadius' type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <!-- Project One -->
            <c:forEach items="${rentals}" var="r">
                <a href="${pageContext.request.contextPath}/rent/${r.id}">
                    <div class="row">
                        <div class="col-md-5">
                            <c:forEach items="${r.imagePaths}" var="z" begin="0" end="0" varStatus="loop">
                                <img class="img-responsive" src="<c:out value="${z}"/>" height="700px" width="300px" />
                            </c:forEach>
                        </div>
                        <div class="col-md-7">
                            <!--<a href="${pageContext.request.contextPath}/rent/${r.id}">-->
                            <h1>${r.streetAddress}
                                ${r.city} ${r.state} ${r.zip}</h1>
                            <!--</a>-->
                        </div>
                    </div>
                </a>
                <hr>
            </c:forEach>
            <!-- /.row -->




            <!-- Pagination -->
            <div class="row text-center">
                <div class="col-lg-12">
                    <ul class="pagination pagination-lg">
                        <c:forEach items="${pages}" var="page">
                            <li><a href="${pageContext.request.contextPath}/rent/rentals?page=${page}">${page}</a></li>
                            <!--<li><a href="&page=${page}">${page}</a></li>-->

                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Your Website 2014</p>
                    </div>
                </div>
                <!-- /.row -->
            </footer>

        </div>

    </div>


    <script>
        function initMap() {

            var input = /** @type {!HTMLInputElement} */(
                    document.getElementById('address'));


            var autocomplete = new google.maps.places.Autocomplete(input);

        }
        ;

    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEqFPxjP_ubeG9tLbj3P0aHUoqNi35rts&libraries=places&callback=initMap"
    async defer></script>



    <!-- Placed at the end of the document so the pages load faster -->
    <!--<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>-->
    <!--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>-->
    <!--<script src="${pageContext.request.contextPath}/js/radius.js"></script>-->

</body>
</html>

