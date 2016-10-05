<%-- 
    Document   : show
    Created on : Oct 5, 2016, 1:37:34 PM
    Author     : brennan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${rental.streetAddress} ${rental.streetName} ${rental.city} ${rental.state}</title>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <h1>${rental.streetAddress}</h1>
    </body>
</html>
