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
<style>

{

}
</style>
</head>
<!-- <body style="background-color: #EEEEEE"> -->
	<%@include file="header.jsp"%><br><br><br><br>
	<body background=resources/images/back4.jpg>
	<div class="container">
	<h1><center>Login</center></h1>
<h3><center><p>Get access to your Orders,Wishlist and Recommendations</p></center></h3>

<br>

				<div class="container-wrapper">
					
					<div class="col-md-8">
						<div id="login-box" align="center">
							<h2 align="center">Login with Username and Password</h2>
							<c:if test="${not empty msg}">
								<div class="msg">${msg}</div>
							</c:if>
							<!--j_spring_security_check"-->
							<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
								<c:if test="${not empty error}">
									<div class="error" style="color: #ff0000;">${error}</div>
								</c:if>
								<div class="form-group">
									<label for="username">User: </label> 
									<input type="text" id="username" name="username" class="form-control" />
								</div>
								<div class="form-group">
									<label for="password"> Password:</label> 
									<input type="password"	id="password" name="password" class="form-control" />
								</div>
								<input type="submit" value="Submit" class="btn btn-default">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</form>
						</div>
					</div>
				</div>
				</div>
				<br>
<br><br>
<br>

<br>
<%@include file="footer.jsp"%>
</body>
</html>