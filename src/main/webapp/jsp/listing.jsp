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
                <input type="text" class="form-control" id="propType" name="propType" value="House" placeholder="Property Type" />
                <input type="text" class="form-control" id="rent" name="rent" value="1000" placeholder="Monthly Rent Amount" />
                <input type="text" class="form-control" id="streetAddress" name="streetAddress" value="2821" placeholder="Stress Address" />
                <input type="text" class="form-control" id="unitNum" name="unitNum" value="134" placeholder="Unit Number" />
                <input type="text" class="form-control" id='city' name="city" value="Silver Lake" placeholder="City" />
                <input type="text" class="form-control" id='state' name="state" value="Ohio" placeholder="State" />
                <input type="text" class="form-control" id='zip' name="zip" value="44224" placeholder="Zip" />
                <br />
                <input type="text" class="form-control" id="beds" name="beds" value="4" placeholder="Bedrooms" />
                <input type="text" class="form-control" id="baths" name="baths" value="3" placeholder="Bathrooms" />
                <input type="text" class="form-control" id="sqft" name="sqft" value="1000" placeholder="SqFt" />
                <input type="text" class="form-control" id="leaseTerms" name="leaseTerms" value="6 months" placeholder="Lease Terms" />



                <input type="checkbox" id='mjFriendly' name="mjFriendly" value="true" /> 420 Friendly
                <br />
                <input type="checkbox" id='growFriendly' name="growFriendly" value="true" />Grow Friendly
                <br />

                <!--<input type="file" name="file" id="file" class="custom-file-input" size="50" />-->

                <button type="submit" id="submitListing" class="btn-primary btn-lg center-block">Submit</button>
            </form>
            <!--</div>-->

            <div class="main">
                <h1>Product Delivery Form Widget</h1>
                <div class="agileinfo_main">
                    <form id="testform" action="#" method="post" novalidate>
                        <fieldset style="border: 1px solid #999">
                            <legend>From :</legend>

                            <p for="country" class="w3_field1">Country</p>
                            <select id="country" name="country" required>
                                <option value="usa">USA</option>
                            </select>

                            <p for="city">City</p>
                            <input id="city" name="city" type="text" required data-error-msg="We need to know which city" />

                            <p for="pincode">Pincode</p>
                            <input id="pincode" name="pincode" type="text" required data-error-msg="Please enter a valid 6 digit pincode" />

                        </fieldset>

                        <fieldset class="w3agile_field" style="border: 1px solid #999">
                            <legend>To :</legend>

                            <p for="country1" class="w3_field1">Country</p>
                            <select id="country1" name="country1" required>
                                <option value="greenland">Greenland</option>
                                <option value="algeria">Algeria</option>
                                <option value="angola">Angola</option>
                                <option value="belgium">Belgium</option>
                                <option value="cambodia">Cambodia</option>
                                <option value="cyprus">Cyprus</option>
                                <option value="jamaica">Jamaica</option>
                            </select>

                            <p for="city1">City</p>
                            <input id="city1" name="city" type="text" required data-error-msg="We need to know which city" />

                            <p for="pincode1">Pincode</p>
                            <input id="pincode1" name="pincode" type="text" required data-error-msg="Please enter a valid 6 digit pincode" />

                        </fieldset>

                        <fieldset style="border: 1px solid #999">
                            <legend>Customer Details :</legend>

                            <p for="firstName" class="w3_field1">Name</p>
                            <input id="firstName" name="firstName" type="text" required data-error-msg="We need to know who you are" />

                            <p for="phoneNum">Phone number</p>
                            <input id="phoneNum" name="phoneNum" type="tel" required data-error-msg="Please enter your phone number" />

                            <p for="emailAddress">Email address</p>
                            <input id="emailAddress" name="emailAddress" type="email" required data-error-msg="Please enter your valid email address" ></input>

                            <p for="secondName">Content</p>
                            <input id="secondName" name="secondName" type="text" required data-error-msg="We need to know which content you are delivering" />

                            <p for="weight">Weight</p>
                            <input id="weight" name="weight" type="number" min="5" required data-error-msg="We need to know content weight"></input>
                            <select id="weight" name="weight" required>
                                <option value="gms">gms</option>
                                <option value="kgs">Kgs</option>
                            </select>

                            <p for="pickdate">Pick Up Date</p>
                            <input class="date" id="datepicker" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '2/08/2013';
                                    }" required="">

                            <p for="city2">City</p>
                            <input id="city2" name="city" type="text" required data-error-msg="We need to know which city" />

                            <p for="state">State</p>
                            <input id="state" name="state" type="text" required data-error-msg="We need to know which state" />

                            <p for="pincode2">Pincode</p>
                            <input id="pincode2" name="pincode" type="text" required data-error-msg="Please enter a valid 6 digit pincode" />

                            <p for="pickaddress" class="w3_textarea">Pick Up Address</p>
                            <textarea id="pickaddress" name="pickaddress" placeholder=" " required data-error-msg="Please enter valid address"></textarea>

                        </fieldset>

                        <button id="expandBtn" type="button" class="expand-trigger" aria-expanded="false" aria-controls="collapsedSection">Ask any question?</button>
                        <div id="collapsedSection" aria-hidden="true">
                            <p for="hiddenInput">This field may or may not be visible</p>
                            <input id="hiddenInput" name="hiddenInput" type="text" required data-error-msg="You wanted an extra question"></input>
                        </div>

                        <input type="submit" value="Submit">
                        <input type="reset" value="Reset" />

                    </form>
                </div>
            </div>
        </div>

            <script>
                var contextRoot = "${pageContext.request.contextPath}";
            </script>

<!--            <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>-->
            <script src="${pageContext.request.contextPath}/js/form2.js"></script>

    </body>
</html>
