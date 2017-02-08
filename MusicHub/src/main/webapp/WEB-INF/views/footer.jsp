<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MusicHub</title>
<style>
.social {
	text-align: right;
	padding-top: 0px;
}

.fa {
	    font-size: 30px;
margin-top:0;	  
	   margin-bottom: 10%;
	}
p {
	color: aqua;
padding-top: 5px;
}

a {
	color: aqua;
}
</style>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-static-bottom">
	<div class="container">
		<div class="row">
			<div class="navbar-text-pull-left" class="col-m-12">
				<p align="left">
					Copyright &copy; MusicHub <a style="padding-left: 5px;"
						href="<c:url value="/privacy" />">Privacy</a> <a href="#"
						data-toggle="modal" data-target="#myModal">ContactUs</a> 
						<a href="#">Feedback
					  <div class="nav navbar-nav pull-right" class="col-m-6">
							<a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
							<a href="https://twitter.com/login"><i class="fa fa-twitter"></i></a>
							<a href="https://www.linkedin.com/uas/login"><i
								class="fa fa-linkedin"></i></a> <a href="https://plus.google.com/"><i
								class="fa fa-google-plus"></i></a> <a
								href="https://github.com/prince6893/"><i
								class="fa fa-github" aria-hidden="true"></i></a>
						</div>
				</p>
			</div>

		</div>


		<!-- Modal -->
		<div class="modal" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Contact_us</h4>
					</div>
					<div class="modal-body">
						<p>
							MusicHub<br> Telephone: 9634561114 <br>

							admin@MusicHub.com Email Subscriptions Update your email address
							or change your subscription status
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>

				</div>

			</div>
		</div>
	</div>
</body>
</html>