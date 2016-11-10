
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
                    <ul class="pagination">
                        <li>
                            <a href="#">&laquo;</a>
                        </li>
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">5</a>
                        </li>
                        <li>
                            <a href="#">&raquo;</a>
                        </li>
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





    <!-- Placed at the end of the document so the pages load faster -->
    <!--<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>-->
    <!--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>-->
    <!--<script src="${pageContext.request.contextPath}/js/radius.js"></script>-->

</body>
</html>

