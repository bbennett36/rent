<%-- 
    Document   : photo
    Created on : Oct 10, 2016, 3:34:17 PM
    Author     : brennan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Photos</title>


    </head>
    <body>
        <%@ include file="navbar.jsp" %>

<!--        <form method="POST" action="${pageContext.request.contextPath}/list/photo/${rental.id}" enctype="multipart/form-data">
            <label class="custom-file">
                <input type="file" name="file" class="custom-file-input" size="50" />
                <span class="custom-file-control"></span>
            </label>
            <button type="submit" class="btn-primary">Submit</button>
        </form>-->

        <form:form method="POST" action="${pageContext.request.contextPath}/list/savefiles" modelAttribute="uploadForm" enctype="multipart/form-data">

            <p>Select files to upload. Press Add button to add more file inputs.</p>

            <table id="fileTable">
                <tr>
                    <td><input name="files[0]" type="file" /></td>
                </tr>

                <tr>
                    <td><input name="files[1]" type="file" /></td>
                </tr>

            </table>
            <br />
            <input type="hidden" name="prop_id" value="${rental.id}" />
            <input type="submit" value="Upload" />
            <input id="addFile" type="button" value="Add File" />
        </form:form>

        <br />
        ${rental.id}

        <script>
        var contextRoot = "${pageContext.request.contextPath}";
        </script>

        <script src="${pageContext.request.contextPath}/js/photo.js"></script>

    </body>
</html>
