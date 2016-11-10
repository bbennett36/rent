<%-- 
    Document   : profile
    Created on : Oct 30, 2016, 5:54:29 PM
    Author     : brennan
--%>

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

    </head>
    <body>
        <!--<div class="container">-->
        <%@ include file="navbar.jsp" %>

        <table class="table-striped table-hover table-responsive">
            <th><h3>Active For Rent Listings</h3></th>
            <c:forEach items="${rentals}" var="r">
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/rent/${r.id}">
                            <p>${r.streetAddress} ${r.city} ${r.state} ${r.zip}</p></a>
                    </td>
                </tr>
            </c:forEach>
        </table>



        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
        <!--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>-->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </body>
</html>
