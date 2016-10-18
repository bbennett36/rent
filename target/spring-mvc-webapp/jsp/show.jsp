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
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css"/>
        <!-- Add the slick-theme.css if you want default styling -->
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick-theme.css"/>

    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <h1>${rental.streetAddress}</h1>

        <div class="images center-block" style="width:500px">
            <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
            <c:forEach items="${rental.imagePaths}" var="z" varStatus="status">

                <div><img src="<c:out value="${z}"/>"  height="400px" width="400px" /></div>
                </c:forEach>
            <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Next" role="button" style="display: block;">Previous</button>
        </div>

        <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>


        <script type="text/javascript">
            $(document).ready(function () {
                $('.images').slick({
//                $('.fade').slick({
                    dots: true,
                    infinite: true,
                    speed: 500,
                    fade: true,
                    cssEase: 'linear'
                });
            });
        </script>
    </body>
</html>
