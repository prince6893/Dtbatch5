<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MusicHub</title>
<!-- Font Awesome CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
  z-index: 20;
}

/* Flip around the padding for proper display in narrow viewports */
.navbar-wrapper > .container {
  padding-right: 0;
  padding-left: 0;
}
.navbar-wrapper .navbar {
  padding-right: 15px;
  padding-left: 15px;
}
.navbar-wrapper .navbar .container {
  width: auto;
}

/* RESPONSIVE CSS
-------------------------------------------------- */

@media (min-width: 768px) {
  /* Navbar positioning foo */
 
  .navbar-wrapper {
    margin-top: 10px;
  }
  .navbar-wrapper .container {
    padding-right: 15px;
    padding-left: 15px;
  }
  .navbar-wrapper .navbar {
    padding-right: 0;
    padding-left: 0;
  }

  /* The navbar becomes detached from the top, so we round the corners */
  .navbar-wrapper .navbar {
    border-radius: 4px;
  }

</style>

</head>
<body>
	<!-- header bar -->	
	<div class="navbar-wrapper">
		<div class="container">
		
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<!-- MusicHub LoGo -->
					<a class="navbar-brand" href="<c:url value="/" />"> <img style="height: 36px; width:76px; padding-bottom: 10px" src="<c:url value = "/resources/images/logo.jpg" />"></a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="<c:url value="/" />">Home</a></li>


						<li><a href="<c:url value="/productForUser" />">All
								Products</a></li>


						<li><a href="<c:url value="/aboutUs" />">About Us</a></li>
					</ul>
					<ul class="nav navbar-nav pull-right">
						<c:if test="${pageContext.request.userPrincipal.name != null}">
							<li><a>Welcome: 
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

							<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
								<li><a href="<c:url value="/customer/cart" />">User
										Cart</a></li>
							</c:if>

							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								<li><a href="<c:url value="/administrator" />">Administrator</a></li>
							</c:if>

						</c:if>

						<c:if test="${pageContext.request.userPrincipal.name == null}">
							<li><a href="<c:url value="/login" />"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
							<li><a href="<c:url value="/signUp" />"><span
									class="glyphicon glyphicon-user"></span>SignUp</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Latest compiled and minified CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</body>
</html>