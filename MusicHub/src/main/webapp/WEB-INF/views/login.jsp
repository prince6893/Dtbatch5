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
	<style>
	#fot
	{
	bottom: px;
	}
	</style>
</head>
<!-- <body style="background-color: #EEEEEE"> -->
	<%@include file="header.jsp"%><br><br><br><br>
	<body background=resources/images/back4.jpg>
	<h1><center>Login</center></h1>
<h3><center><p>Get access to your Orders,Wishlist and Recommendations</p></center></h3>

<br>
<!--
	<div style="text-align: center; background-color: #EEEEEE;">
		<div
			style="box-sizing: border-box; display: inline-block; width: auto; max-width: 1500px; background-color: #FFFFFF; border: 2px solid #9999cc; border-radius: 5px; box-shadow: 0px 0px 8px #9999cc; margin: 50px auto auto;">

			<div style="background: #FFFFFF; padding: 10px" id="ap_style">
				
				
 				<style>

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



#ap_style .error {
	font-family: monotype corsiva, arial;
	color: #D41313;
	font-size: 1.00em;
}
 -->
		 	<script type="text/javascript"
					src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				<div class="container-wrapper">
					<div class="container">
						<div id="login-box">
							<h2>Login with Username and Password</h2>
							<c:if test="${not empty msg}">
								<div class="msg">${msg}</div>
							</c:if>
							<!--j_spring_security_check"-->
							<form name="loginForm"
								action="<c:url value="/j_spring_security_check"/>" method="post">
								<c:if test="${not empty error}">
									<div class="error" style="color: #ff0000;">${error}</div>
								</c:if>
								<div class="form-group">
									<label for="username">User: </label> <input type="text"
										id="username" name="username" class="form-control" />
								</div>
								<div class="form-group">
									<label for="password"> Password:</label> <input type="password"
										id="password" name="password" class="form-control" />
								</div>
								<input type="submit" value="Submit" class="btn btn-default">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</form>
						</div>
					</div>
				</div>
				<br>
<br><br>


</body>
<br>
</br></br>
<br>
<br>
<div id="fot">
	<%@include file="footer.jsp"%>
</div>
</html>