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
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script   src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"   integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="   crossorigin="anonymous"></script>


        <link href="${pageContext.request.contextPath}/css/site.css" rel="stylesheet" >
        <!--<script src="${pageContext.request.contextPath}/js/map.js"></script>-->
        <script src="${pageContext.request.contextPath}/js/radius.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<!--        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEqFPxjP_ubeG9tLbj3P0aHUoqNi35rts&libraries=places&callback=initMap"
        async defer></script>-->
    </head>
    <body>

        <!--<div class="header">-->
        <!--            <nav class="navbar navbar-default">
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
                                    <li <c:if test="${home}"> class="active" </c:if>><a href="${pageContext.request.contextPath}"><span class="glyphicon glyphicon-home"></span>MJrent.com</a></li>
                                    <li <c:if test="${rent}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/rent/rentals">For Rent</a></li>
                                    <li <c:if test="${sale}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/list/sale">For Sale</a></li>
                                    <li <c:if test="${list}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/list/new">List a Property</a></li>
                                    </ul>
                                    <ul class="nav navbar-nav navbar-right">
                                        <li> 
        <sec:authorize access="!isAuthenticated()">
            <a href="${pageContext.request.contextPath}/user/signup"><strong>Sign up</strong></a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="${pageContext.request.contextPath}/user/profile"><strong>Profile</strong></a>
        </sec:authorize>
    </li>
    <li>
        <sec:authorize access="!isAuthenticated()">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
            <ul id="login-dp" class="dropdown-menu">
                <li>
                    <div class="row">
                        <div class="col-md-12">
                            Login via
                            <div class="social-buttons">
                                <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                                <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                            </div>
                            or
                            <form action="${pageContext.request.contextPath}/j_spring_security_check" method="POST" id="login-nav">
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                    <input type="email" name="username" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputPassword2">Password</label>
                                    <input type="password" name="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                    <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> keep me logged-in
                                    </label>
                                </div>
                            </form>
                        </div>
                        <div class="bottom text-center">
                            New here ? <a href="#"><b>Join Us</b></a>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        <a href="#" data-toggle="modal" data-target="#bannerformmodal"><strong><span class="glyphicon glyphicon-log-in"></span> Login</strong></a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="${pageContext.request.contextPath}/logout"><strong> <span class="glyphicon glyphicon-log-out"></span> Logout</strong></a>
        </sec:authorize>
        </li>
    </ul>
</div>
/.nav-collapse 
</div>
/.container-fluid 
</nav>-->
        <nav class="navbar navbar-inverse nav-tabs navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!--                    <a class="navbar-brand" href="#">
                                            <img src="http://placehold.it/150x50&text=Logo" alt="">
                                        </a>-->
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li <c:if test="${home}"> class="active" </c:if>><a href="${pageContext.request.contextPath}">MJrent.com</a></li>
                        <li <c:if test="${rent}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/rent/rentals">For Rent</a></li>
                        <li <c:if test="${sale}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/list/sale">For Sale</a></li>
                        <li <c:if test="${list}"> class="active" </c:if>><a href="${pageContext.request.contextPath}/list/new">List a Property</a></li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li> 
                            <sec:authorize access="!isAuthenticated()">
                                <a href="${pageContext.request.contextPath}/user/signup"><strong>Sign up</strong></a>
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <a href="${pageContext.request.contextPath}/user/profile"><strong>Profile</strong></a>
                            </sec:authorize>
                        </li>
                        <li>
                            <sec:authorize access="!isAuthenticated()">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
                                <ul id="login-dp" class="dropdown-menu">
                                    <li>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <!--                                                Login via
                                                                                                <div class="social-buttons">
                                                                                                    <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                                                                                                    <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                                                                                                </div>
                                                                                                or-->
                                                <br />
                                                <form action="${pageContext.request.contextPath}/j_spring_security_check" method="POST" id="login-nav">
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                                        <input type="email" name="username" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                        <input type="password" name="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                                        <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                                        <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                                                    </div>
                                                    <!--                                                    <div class="checkbox">
                                                                                                            <label>
                                                                                                                <input type="checkbox"> keep me logged-in
                                                                                                            </label>
                                                                                                        </div>-->
                                                </form>
                                            </div>
                                            <div class="bottom text-center">
                                                New here ? <a href="#"><b>Join Us</b></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!--<a href="#" data-toggle="modal" data-target="#bannerformmodal"><strong><span class="glyphicon glyphicon-log-in"></span> Login</strong></a>-->
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <a href="${pageContext.request.contextPath}/logout"><strong>Logout</strong></a>
                        </sec:authorize>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        <!--</div>-->

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </body>
</html>
