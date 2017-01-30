<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<style>
#ba
{
float:left;
padding-left: 75px;

}
#sa
{
float: right;
padding-right: 150px;
}
#sub
{
padding-top: 375px;
padding-left: 450px;
padding-right: 200px;
}
#bi
{
padding-left: 250px;
padding-right: 260px;
}

</style>
</head>
<title>Sign Up</title>
<%@ include file="header.jsp" %>
<br>

<!-- <body background=resources/images/back4.jpg>
 -->

 <div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <center>
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below</p>
        </div>
<%-- <c:url var="addAction" value="/register"></c:url>
 --%>
		<form:form action="${pageContext.request.contextPath}/register" commandName="registerCommand" method="post">
</center>

        <h3 style="text-align: center;">Basic Information</h3>
 <div id="bi">	
        <div class="form-group">
            <label for="name">Name</label>
            <form:errors path="username" cssStyle="color: #ff0000" />
            <form:input path="username" id="username"  class="form-Control" type="text" required="true"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="useremail" cssStyle="color: #ff0000" />
            <form:input path="useremail" id="useremail" type="email" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="usernumber" id="usernumber" type="tel" title="id should contains 10 digit" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="userloginname" cssStyle="color: #ff0000" />
            <form:input path="userloginname" id="userloginname" type="text" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" required="true" class="form-Control" />
        </div>

</div>
        <br/>
<div id="ba">
        <h3>Billing Address for Products</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" type="text" required="true" class="form-Control" />
        </div>


        <div class="form-group">
            <label for="city">City</label>
            <form:input path="billingAddress.city" type="text" required="true" id="city" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="billingAddress.state" id="state" type="text" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" type="text" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip" require="true" title="Zip should contains 7 digit" class="form-Control" />
        </div>

        <br/>
</div>


<div id="sa">
        <h3>Shipping Address for Products</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" type="text" required="true" class="form-Control" />
        </div>

       

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="shippingAddress.state" id="state" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country" id="country" required="true" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="zip" required="true" class="form-Control" />
        </div>
</div>
  <div id="sub">
        <input type="submit" value="Submit" class="btn btn-primary">
        <a href="<c:url value="/" />" class="btn btn-warning">Cancel</a>
</div>
        <br/><br/>
        </form:form>
      
</div>
</div>
<br>
<br>
<br>
<br>

<%@ include file="footer.jsp" %>
</body>
</html>