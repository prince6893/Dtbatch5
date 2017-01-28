<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Popular Products</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="row">
<div class="col-md-4 " >

		<a class="btn btn-default col-sm-offset-8" style="background-color:	#A9A9A9"  href="<c:url value="/productForUser?searchCondition=String" />" role="button"  >

<img class="center-block" src="<c:url value ="/resources/images/4.jpg"/>">
</a>
<div class=text-right   " style="margin-right:25px;">
<a style="text-decoration:none" href="<c:url value="/productForUser?searchCondition=cat" />">New Products</a>
</div>
</div>

<div class="col-md-4"  >
		<a class="btn btn-default col-sm-offset-4"  style="background-color:	#A9A9A9"  href="<c:url value="/productForUser?searchCondition=drums" />" role="button">
<img id="onee" class="center-block" src="<c:url value = "/resources/images/5.jpg" /> "  >
</a>
<div class=text-center " style="margin-right:25px;">
<a style="text-decoration:none" href="<c:url value="/productForUser?searchCondition=cat" />">Drums</a>
</div>
</div>


<div class="col-md-4" >
		<a class="btn btn-default col-sm-offset-1"  style="background-color:	#A9A9A9" href="<c:url value="/productForUser?searchCondition=Accessories" />" role="button"  >

<img class="center-block" src="<c:url value = "/resources/images/6.jpg" /> " >
</a>
<div class=text-left " style="margin-left:25px;">
<a style="text-decoration:none" href="<c:url value="/productForUser?searchCondition=cat" />">Product Accessories</a>
</div>
</div>
</div>
<%-- 
	<div class="container">
		<h2 class="h2">Popular Products</h2>
		<div class="row">
			<div class="col-sm-4">
				<a href="#" class="prod">Most Popular <img
					class="img-responsive"
					src="<c:url value ="/resources/images/4.jpg"/>"></a>
			</div>
		
			<!-- row end -->
			<div class="col-sm-4">
				<a href='#'>Recently Viewed <img class="img-responsive"
					src="<c:url value ="/resources/images/5.jpg"/>"></a>
			</div>
			<!-- row two end -->
			<div class="col-sm-4">
				<a href='#'>Used Products <img class="img-responsive"
					src="<c:url value ="/resources/images/6.jpg"/>"></a>
			</div>
			<!-- row 3 end -->
		</div>
		</div>
		 --%><!-- end container -->
</body>
</html>