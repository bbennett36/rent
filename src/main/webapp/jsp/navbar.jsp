<%-- 
    Document   : navbar
    Created on : Jun 23, 2016, 9:21:43 AM
    Author     : apprentice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

        <link href="${pageContext.request.contextPath}/css/site.css" rel="stylesheet" >
        <script src="${pageContext.request.contextPath}/js/map.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEqFPxjP_ubeG9tLbj3P0aHUoqNi35rts&callback=initMap"
        async defer></script>
    </head>
    <body>

        <div class="header">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar9">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <div class="brand-centered">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}">
                        </a>
                    </div>

                    <div id="navbar9" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav nav-pills navbar-left">
                            <li <c:if test="${home}"> class="active" </c:if>><a href="${pageContext.request.contextPath}"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                            <li <c:if test="${rent}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/list/rent">For Rent</a></li>
                            <li <c:if test="${sale}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/list/sale">For Sale</a></li>
                            <li <c:if test="${list}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/list/new">List a Property</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li> 
                                <%--<sec:authorize access="!isAuthenticated()">--%>
                                <a href="${pageContext.request.contextPath}/login/signup"><strong>Sign up</strong></a>
                                <%--</sec:authorize>--%>
                                <%--<sec:authorize access="isAuthenticated()">--%>
                                    <!--<a href="${pageContext.request.contextPath}/user/profile"><strong>Profile</strong></a>-->
                                <%--</sec:authorize>--%>
                            </li>
                            <li>
                                <%--<sec:authorize access="!isAuthenticated()">--%>
                                <a href="#" data-toggle="modal" data-target="#bannerformmodal"><strong><span class="glyphicon glyphicon-log-in"></span> Login</strong></a>
                                            <%--</sec:authorize>--%>
                                            <%--<sec:authorize access="isAuthenticated()">--%>
                                    <!--<a href="${pageContext.request.contextPath}/logout"><strong> <span class="glyphicon glyphicon-log-out"></span> Logout</strong></a>-->
                                <%--</sec:authorize>--%>
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
                <!--/.container-fluid -->
            </nav>
        </div>

    </body>
</html>
