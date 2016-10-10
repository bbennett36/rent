<%-- 
    Document   : listing
    Created on : Sep 22, 2016, 12:05:18 AM
    Author     : brennan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List a Property</title>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>

        <div class="container center_div">
            <form method="GET">
                <input type="text" class="form-control" id="rent" name="rent" value="1000" placeholder="Monthly Rent Amount" />
                <input type="text" class="form-control" id="streetAddress" name="streetAddress" value="2821" placeholder="Stress Address" />
                <input type="text" class="form-control" id='streetName' name="streetName" value="lee rd" placeholder="Stress Name" />
                <input type="text" class="form-control" id='city' name="city" value="Silver Lake" placeholder="City" />
                <input type="text" class="form-control" id='state' name="state" value="Ohio" placeholder="State" />
                <input type="text" class="form-control" id='zip' name="zip" value="44224" placeholder="Zip" />


                <input type="checkbox" id='mjFriendly' name="mjFriendly" value="true" /> 420 Friendly
                <br />
                <input type="checkbox" id='growFriendly' name="growFriendly" value="true" />Grow Friendly
                <br />
                <!--<input type="file" name="file" id="file" class="custom-file-input" size="50" />-->

                <button type="submit" id="submitListing" class="btn-primary btn-lg center-block">Submit</button>
            </form>
        </div>

        <script>
            var contextRoot = "${pageContext.request.contextPath}";
        </script>

        <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/form2.js"></script>

    </body>
</html>
