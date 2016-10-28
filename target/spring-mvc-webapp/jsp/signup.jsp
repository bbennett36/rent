<%-- 
    Document   : signup
    Created on : Oct 19, 2016, 1:45:59 PM
    Author     : brennan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>

        <div class="col-md-4"></div>

        <div class="col-md-4">

            <div class="input-group" id="centerme">
                <form method="POST" action="${pageContext.request.contextPath}/user/new">
<!--                    <input type="text" name="companyName" class="form-group" placeholder="Enter Company Name" />
                    <br />
                    <input type="text" name="email" class="form-group" placeholder="Enter Email">
                    <br />-->
                    <input type="text" name="username" class="form-group" placeholder="Enter Username" />
                    <br />
                    <input type="text" name="password" class="form-group" placeholder="Enter Password" />
                    <br />
                    <button type="submit" class="btn btn-success">Sign up</button>
                </form>
            </div>

        </div>

        <div class="col-md-4"></div>
    </body>
</html>
