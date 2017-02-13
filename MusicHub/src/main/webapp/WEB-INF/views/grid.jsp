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
#g1:hover
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
<a href="<c:url value="/productForUser?searchCondition=cat"/>">
<img id="g1" src="<c:url value ="/resources/images/4.jpg"/>" alt="Popular products" class="img-circle">
<br>
Popular Products</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->
<div class="col-sm-3 feature">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Deals of the day</h3>
</div><!-- div end panel heading -->
<a href="<c:url value="/productForUser?searchCondition=cat"/>">
<img id="g1" src="<c:url value ="/resources/images/5.jpg"/>" alt="Popular products" class="img-circle">
<br>
Deal of the Day</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->
<div class="col-sm-3 feature">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Recently Viewed</h3>
</div><!-- div end panel heading -->
<a href="<c:url value="/productForUser?searchCondition=cat"/>">
<img id="g1" src="<c:url value ="/resources/images/6.jpg"/>" alt="Popular products" class="img-circle">
<br>
Recently viewed</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->
<div class="col-sm-3 feature">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Specially For You</h3>
</div><!-- div end panel heading -->
<div class="kit">
<img id="g1" style="height: 70px;width: 120px; " src="<c:url value ="/resources/images/ques.jpg"/>" alt="Popular products" class="img-circle">
</div>
<a href="<c:url value="/productForUser?searchCondition=cat"/>">Click me for more</a>
</div><!-- end panel -->
</div><!-- col4 end feature -->
</div><!-- end features -->
</div><!-- end container -->

</body>
</html>