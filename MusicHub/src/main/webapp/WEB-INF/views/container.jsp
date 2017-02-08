<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MusicHub</title>
<style>
  /* Bump up size of carousel content */
  .carousel-caption p {
    margin-bottom: 20px;
    font-size: 21px;
    line-height: 1.4;
  }
/* CUSTOMIZE THE CAROUSEL
-------------------------------------------------- */

/* Carousel base class */
.carousel {
  height: 500px;
  margin-bottom: 60px;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  z-index: 10;
}

/* Declare heights because of positioning of img element */

.carousel .item {
  height: 500px;

}
.carousel-inner > .item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 500px;
}
/* .carousel {
position: absolute;
top:0;
}

.carousel-inner 
{
position: relative; width: 100%; overflow: hidden;
}

 */

</style>
</head>
<body>
	<div id="mycarousel" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px; margin-left: 20px; margin-right: 10px;"
			data-interval="2000">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox" id="myCarousel">
				<div class="item active">
					<img id="slidePic"
						style="width: 1100px; height: 500px; min-width: 100%;"
						class="img-responsive"
						src="<c:url value = "/resources/images/1.jpg" /> "
						alt="First slide">
					<!--  to write captions on carousel              
					<div class="carousel-caption">
					</div> -->
				</div>
				<div class="item">
					<img id="slidePic"
						style="width: 1100px; height: 500px; min-width: 100%;"
						class="img-responsive"
						src="<c:url value = "/resources/images/2.jpg" /> "
						alt="Second slide">
					<div class="carousel-caption">
						 <h3>Don't lose Yourself in anger. Lose in Music. </h3>
					</div>
				</div>
				<div class="item">
					<img id="slidePic"
						style="width: 1100px; height: 500px; min-width: 100%;"
						class="img-responsive"
						src="<c:url value = "/resources/images/3.jpg" /> "
						alt="Third slide">
					<div class="carousel-caption">
						<h1>50% OFF</h1>
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

</body>
</html>