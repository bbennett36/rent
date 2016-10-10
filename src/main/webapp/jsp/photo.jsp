<%-- 
    Document   : photo
    Created on : Oct 10, 2016, 3:34:17 PM
    Author     : brennan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Photos</title>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>

        <form method="POST" action="${pageContext.request.contextPath}/list/photo/"${rental.id} enctype="multipart/form-data">
            <label class="custom-file">
                <input type="file" name="file" class="custom-file-input" size="50" />
                <span class="custom-file-control"></span>
            </label>
            <button type="submit" class="btn-primary">Submit</button>
        </form>
            
            ${rental.id}
            
            

    </body>
</html>
