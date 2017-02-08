<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Popular Products</title>
<style>
#features
{
text-align: center;
}
#features img {
	margin: 10px 10px 10px;
}
img:hover
{
    box-shadow: 0px 0px 150px #000000;
    z-index: 2;
    -webkit-transition: all 200ms ease-in;
    -webkit-transform: scale(1.5);
    -ms-transition: all 200ms ease-in;
    -ms-transform: scale(1.5);   
    -moz-transition: all 200ms ease-in;
    -moz-transform: scale(1.5);
    transition: all 200ms ease-in;
    transform: scale(1.5);
}

</style>
</head>
<body>
<div class="container">
<div class="row" id="featuresHeading">
<div class="col-12">
<h2>Products</h2>
<p class="lead">Want to have the closer look of the products just click on one of them
</p>

</div><!-- end col 12 -->
</div><!-- end fheading -->
<div class="row" id="features">
<div class="col-sm-3 feature">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Popular Products</h3>
</div><!-- div end panel heading -->
<img src="<c:url value ="/resources/images/4.jpg"/>" alt="Popular products" class="img-circle">
<br>
<a href="<c:url value="/productForUser?searchCondition=cat"/>">Popular Products</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->
<div class="col-sm-3 feature">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Deals of the day</h3>
</div><!-- div end panel heading -->
<img src="<c:url value ="/resources/images/5.jpg"/>" alt="Popular products" class="img-circle">
<br>
<a href="<c:url value="/productForUser?searchCondition=cat"/>">Deal of the Day</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->
<div class="col-sm-3 feature">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Recently Viwed</h3>
</div><!-- div end panel heading -->
<img src="<c:url value ="/resources/images/6.jpg"/>" alt="Popular products" class="img-circle">

<br>
<a href="<c:url value="/productForUser?searchCondition=cat"/>">Recently viewed</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->
<div class="col-sm-3 feature">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Specially For You</h3>
</div><!-- div end panel heading -->
<div class="kit">
<img style="height: 70px;width: 120px; " src="<c:url value ="/resources/images/ques.jpg"/>" alt="Popular products" class="img-circle">
</div>

<a href="<c:url value="/productForUser?searchCondition=cat"/>">Click me for more</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->


</div><!-- end features -->


</div><!-- end container -->



<%-- 
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
</div> --%>
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