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

        <form:form method="POST" action="${pageContext.request.contextPath}/list/savefiles" modelAttribute="uploadForm" enctype="multipart/form-data">

            <p>Select files to upload. Press Add button to add more file inputs.</p>

            <table id="fileTable">
                <tr>
                    <td><input name="files[0]" type="file" /></td>
                </tr>
            </table>
            <br />
            <input type="hidden" name="prop_id" value="${rental.id}" />
            <input type="submit" value="Upload" />
            <input id="addFile" type="button" value="Add File" />
        </form:form>

        <!--        <div class="agile-its">
                    <h2>File Upload</h2>
                    <div class="w3layouts">
                        <div class="photos-upload-view">
                            <form id="upload" action="index.html" method="POST" enctype="multipart/form-data">
        <%--<form:form method="POST" action="${pageContext.request.contextPath}/list/savefiles" modelAttribute="uploadForm" enctype="multipart/form-data">--%>
            <input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />
            <div class="agileinfo">
                <input type="submit" class="choose" value="Choose file..">
                <h3>OR</h3>
                <input type="file" class="choose" id="fileselect"  value="Choose file.." name="files[0]" />
                <input type="hidden" name="prop_id" value="${rental.id}" />
                <div id="filedrag">drag and drop files here</div>
            </div>

            <div id="messages">
                <p>Status Messages</p>
            </div>
            <input type="submit" value="Upload" />
        <%--</form:form>--%>
</div>
<div class="clearfix"></div>-->
        <!--<script src="js/filedrag.js"></script>-->




        <br />
        ${rental.id}

        <script>
            var contextRoot = "${pageContext.request.contextPath}";
        </script>

        <script src="${pageContext.request.contextPath}/js/photo.js"></script>
<!--<script src="${pageContext.request.contextPath}/js/filedrag.js"></script>-->

    </body>
</html>
