<%-- 
    Document   : pricing
    Created on : Nov 10, 2016, 4:23:35 PM
    Author     : brennan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href='//fonts.googleapis.com/css?family=Monda:400,700' rel='stylesheet' type='text/css'>
        <!--google fonts-->
        <!--<script src="js/jquery-1.11.0.min.js"></script>-->
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                $('.popup-with-zoom-anim').magnificPopup({
                    type: 'inline',
                    fixedContentPos: false,
                    fixedBgPos: true,
                    overflowY: 'auto',
                    closeBtnInside: true,
                    preloader: false,
                    midClick: true,
                    removalDelay: 300,
                    mainClass: 'my-mfp-zoom-in'
                });

            });
        </script>

    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <!--header start here-->
        <div class="priceing-table w3l">
            <div class="wrap">
                <h1>Colorful Pricing Tables</h1>
                <div class="priceing-table-main">
                    <div class="price-grid">
                        <div class="price-block agile">
                            <div class="price-gd-top pric-clr1">
                                <h4>Basic</h4>
                                <h3>$5</h3>
                                <h5>1 month</h5>
                            </div>
                            <div class="price-gd-bottom">
                                <div class="price-list">
                                    <ul>
                                        <li>Full access</li>
                                        <li>Documentation</li>
                                        <li>Customers Support</li>
                                        <li>Free Updates</li>
                                        <li>Unlimited Domains</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="price-selet pric-sclr1">		    			   
                                <a class="popup-with-zoom-anim" href="#small-dialog">Sign Up</a>
                            </div>
                        </div>
                    </div>
                    <div class="price-grid">
                        <div class="price-block agile">
                            <div class="price-gd-top pric-clr2">
                                <h4>Standard</h4>
                                <h3>$10</h3>
                                <h5>5 months</h5>
                            </div>
                            <div class="price-gd-bottom">
                                <div class="price-list">
                                    <ul>
                                        <li>Full access</li>
                                        <li>Documentation</li>
                                        <li>Customers Support</li>
                                        <li>Free Updates</li>
                                        <li>Unlimited Domains</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="price-selet pric-sclr2">
                                <a class="popup-with-zoom-anim" href="#small-dialog">Sign Up</a>
                            </div>
                        </div>
                    </div>
                    <div class="price-grid wthree">
                        <div class="price-block agile">
                            <div class="price-gd-top pric-clr3">
                                <h4>Premium</h4>
                                <h3>$20</h3>
                                <h5>Free for 2 months</h5>
                            </div>
                            <div class="price-gd-bottom">
                                <div class="price-list">
                                    <ul>
                                        <li>Full access</li>
                                        <li>Documentation</li>
                                        <li>Customers Support</li>
                                        <li>Free Updates</li>
                                        <li>Unlimited Domains</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="price-selet pric-sclr3">
                                <a class="popup-with-zoom-anim" href="#small-dialog">Sign Up</a>
                            </div>
                        </div>
                    </div>
                    <div class="clear"> </div>
                </div>
            </div>
        </div>
        <!--header end here-->
        <!--pop-up-grid-->
        <div id="popup">
            <div id="small-dialog" class="mfp-hide">
                <div class="pop_up">
                    <div class="payment-online-form-left">
                        <form action="#" method="post">
                            <h4>Sign Up</h4>
                            <ul>
                                <li><input class="text-box-dark" type="text" placeholder="Name" name="Name" required=""></li>																								
                                <li><input class="text-box-dark" type="text" placeholder="Email" name="Email"></li>
                                <li><input class="text-box-dark" type="password" placeholder="Password" name="Password"></li>
                                <li><input class="text-box-dark" type="text" placeholder="Phone" name="Phone"></li>
                            </ul>																				
                            <span class="checkbox1">
                                <label class="checkbox"><input type="checkbox" name="" checked=""><i> </i>I Accept Terms.</label>
                            </span>												
                            <ul class="payment-sendbtns">
                                <li><input type="submit" value="Submit"></li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!--pop-up-grid-->
    </body>
</html>
