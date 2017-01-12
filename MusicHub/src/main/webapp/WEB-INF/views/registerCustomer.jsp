<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MusicHub</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous" />


<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body style="background-color: #EEEEEE">

	<%@include file="header.jsp"%><br>
	<br>
	<br>
	<h1>
		<center>Sign Up</center>
	</h1>

	<h3>
		<center>We do not share your personal details with anyone.</center>
	</h3>
	<div style="text-align: center; background-color: #EEEEEE;">
		<div
			style="box-sizing: border-box; display: inline-block; width: auto; max-width: 1500px; background-color: #FFFFFF; border: 2px solid #9999cc; border-radius: 5px; box-shadow: 0px 0px 8px #9999cc; margin: 50px auto auto;">

			<div style="background: #FFFFFF; padding: 10px" id="ap_style">
				<style type="text/css" scoped>
#ap_style td {
	text-align: left;
	font-family: verdana, arial;
	color: #064073;
	font-size: 1.00em;
}

#ap_style input {
	border: 1px solid #CCCCCC;
	border-radius: 5px;
	color: #666666;
	display: inline-block;
	font-size: 1.00em;
	padding: 15px;
}

#ap_style input[type="text"], input[type="password"] {
	width: 100%;
}

#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"]
	{
	height: auto;
	width: auto;
	cursor: pointer;
	box-shadow: 0px 0px 5px #0361A8;
	float: right;
	text-align: right;
	margin-top: 10px;
	margin-left: 7px;
}

#ap_style table.center {
	margin-left: auto;
	margin-right: auto;
}

#ap_style .error {
	font-family: verdana, arial;
	color: #D41313;
	font-size: 1.00em;
}
</style>
				<script type="text/javascript"
					src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<form:form action="${pageContext.request.contextPath}/registerCustomer"
method="post" commandName="customer">


<h3>Basic Information</h3>
<div class="form-group">
<label for="name">Name</label>
<form:errors path="customerName" cssStyle="color: #ff0000" />
<form:input path="customerName" id="name" class="form-Control" />
</div>
<div class="form-group">
<label for="email">Email</label>
<span style="color: #ff0000">${emailMsg}</span>
<form:errors path="customerEmail" cssStyle="color: #ff0000" />
<form:input path="customerEmail" id="email" class="form-Control" />
</div>
<div class="form-group">
<label for="phone">Phone</label>
<form:input path="customerPhone" id="phone" class="form-Control" />
</div>
<div class="form-group">
<label for="username">Username</label>
<span style="color: #ff0000">${usernameMsg}</span>
<form:errors path="username" cssStyle="color: #ff0000" />
<form:input path="username" id="username" class="form-Control" />
</div>
<div class="form-group">
<label for="password">Password</label>
<form:errors path="password" cssStyle="color: #ff0000" />
<form:password path="password" id="password" class="form-Control" />
</div>
<br/>
<h3>Billing Address</h3>
<div class="form-group">
<label for="billingStreet">Street Name</label>
<form:input path="billingAddress.streetName" id="billingStreet" class="form-Control" />
</div>
<div class="form-group">
<label for="billingApartmentNumber">Apartment Number</label>
<form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
</div>
<div class="form-group">
<label for="billingCity">City</label>
<form:input path="billingAddress.city" id="billingCity" class="form-Control" />
</div>
<div class="form-group">
<label for="billingState">State</label>
<form:input path="billingAddress.state" id="billingState" class="form-Control" />
</div>
<div class="form-group">
<label for="billingCountry">Country</label>
<form:input path="billingAddress.country" id="billingCountry" class="form-Control" />
</div>
<div class="form-group">
<label for="billingZip">Zipcode</label>
<form:input path="billingAddress.zipCode" id="billingZip" class="form-Control" />
</div>
<br/>
<h3>Shipping Address for Products</h3>
<div class="form-group">
<label for="shippingStreet">Street Name</label>
<form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control" />
</div>
<div class="form-group">
<label for="shippingApartmentNumber">Apartment Number</label>
<form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
</div>
<div class="form-group">
<label for="shippingCity">City</label>
<form:input path="shippingAddress.city" id="shippingCity" class="form-Control" />
</div>
<div class="form-group">
<label for="shippingState">State</label>
<form:input path="shippingAddress.state" id="shippingState" class="form-Control" />
</div>
<div class="form-group">
<label for="shippingCountry">Country</label>
<form:input path="shippingAddress.country" id="shippingCountry" class="form-Control" />
</div>
<div class="form-group">
<label for="shippingZip">Zipcode</label>
<form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control" />
</div>

<br/><br/>
<input type="submit" value="submit" class="btn btn-default">
<a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
</form:form>
		
<br>
<br>
<br>
	<%@include file="footer.jsp"%>

</body>
</html>