
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
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>-->
<!--        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script   src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"   integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="   crossorigin="anonymous"></script>-->
        <!--<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>-->


    </head>
    <body>
        <!--<div class="container">-->
        <%@ include file="navbar.jsp" %>

        <div class="main">
            <div class="main-section">
                <div class="property-section">
                    <h2>Find a Property</h2>
                    <div class="property-bottom">
                        <form action="#" method="post">
                            <input type="text" name="Name" placeholder="Filter by keywords" required>
                            <div class="select-section">
                                <div class="select-left">
                                    <select class="sel">
                                        <option value="">Type of house</option>
                                        <option value="">Apartment</option>
                                        <option value="">Single</option>
                                        <option value="">Double</option>
                                        <option value="">individual</option>
                                        <option value="">Duplex</option>
                                    </select>
                                </div>
                                <div class="select-right">
                                    <select class="sel">
                                        <option value="">City</option>
                                        <option value="">New Jersey</option>
                                        <option value="">New York</option>
                                        <option value="">Australia</option>
                                        <option value="">Canada</option>
                                        <option value="">India</option>
                                    </select>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="filter-price">
                                <h3>Price range</h3>
                                <ul class="dropdown-menu6">
                                    <li>                
                                        <div id="slider-range"></div>							
                                        <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                                    </li>			
                                </ul>
                                <!---->
                                <script type='text/javascript'>//<![CDATA[ 
                                    $(window).ready(function () {
                                        $("#slider-range").slider({
                                            range: true,
                                            min: 0,
                                            max: 9000,
                                            values: [1000, 7000],
                                            slide: function (event, ui) {
                                                $("#amount").val("$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ]);
                                            }
                                        });
                                        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                                    });//]]>  

                                </script>
                                <!--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>-->
                            </div>
                            <!---->	
                            <br />
                            <br />
                            <br />
                            <input type="submit" value="Find property" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <!--<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>-->
        <!--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>-->
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>-->

    </body>
</html>

