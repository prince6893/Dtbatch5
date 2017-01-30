<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MusicHub</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">


<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="container fluid" id="container2">
		<div id="mycarousel" class="carousel slide" data-ride="carousel"
			style="margin-bottom: 30px; margin-left: 20px; margin-right: 10px;"
			data-interval="2000">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox" id="myCarousel">
				<div class="item active">
					<img id="slidePic"
						style="width: 1100px; height: 466px; min-width: 100%;"
						class="img-responsive"
						src="<c:url value = "/resources/images/1.jpg" /> "
						alt="First slide">
					<!--  to write captions on carousel              
					<div class="carousel-caption">
					</div> -->
				</div>
				<div class="item">
					<img id="slidePic"
						style="width: 1100px; height: 466px; min-width: 100%;"
						class="img-responsive"
						src="<c:url value = "/resources/images/2.jpg" /> "
						alt="Second slide">
					<div class="carousel-caption">
						 <h3>Don't lose Yourself in anger. Lose in Music. </h3>
					</div>
				</div>
				<div class="item">
					<img id="slidePic"
						style="width: 1100px; height: 466px; min-width: 100%;"
						class="img-responsive"
						src="<c:url value = "/resources/images/3.jpg" /> "
						alt="Third slide">
					<div class="carousel-caption">
						<h1>50% OFF</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- for left and right ctrl button on carousel -->
	
	<a style="width:150px;" class="left carousel-control" href="#mycarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
	</a>
	<a style="width:150px;" class="right carousel-control" href="#mycarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>
	</a>

	</div>
	</div>
	</div>
	<br>
	<br>
	<br>
</body>
</html>