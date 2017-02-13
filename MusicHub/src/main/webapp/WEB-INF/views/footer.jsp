<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MusicHub</title>
<style>
.fa {
	font-size: 30px;
	margin-top: 0;
	margin-bottom: 10%;
	color: aqua;
}

#fot {
	color: aqua;
	padding-top: 10px;
}
#inputMessage
{
margin-bottom: 10px;
}
</style>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-static-bottom">
	<div class="container">
		<div class="row">
			<div class="navbar-text-pull-left" class="col-m-12">
				<p id="fot" align="left">
					Copyright &copy; MusicHub <a style="padding-left: 5px;"
						href="<c:url value="/privacy" />">Privacy</a> 
						<a href="#myModal" data-toggle="modal" data-target="#myModal">ContactUs</a> 
						<div class="nav navbar-nav pull-right" class="col-m-6">
							<a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a>
							<a href="https://twitter.com/login" target="_blank"><i class="fa fa-twitter"></i></a>
							<a href="https://www.linkedin.com/uas/login" target="_blank"><i class="fa fa-linkedin"></i></a> 
							<a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus"></i></a> 
							<a href="https://github.com/prince6893/" target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a>
						</div>
				</p>
			</div>

		</div>


		<!-- Modal -->
		<div class="modal fade" id="myModal" role="button">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Contact_Us</h4>
					</div><!-- end modal header -->
					<div class="modal-body">
						<p>MusicHub<br>
						Telephone: 9634561114 <br>
						 Email:admin@MusicHub.com 
					<br>
					 Email Subscriptions Update your email address or change your subscription status
						</p>
						<form class="form-horizontal">
						<div class="form-group">
						<label class="col-lg-2 control-label" for="inputName">Name</label>
						<div class="col-lg-10">
						<input class="form-control"id="inputName" placeholder="Name" type="text">
						
						</div>
						</div>
						<div class="form-group">
						<label class="col-lg-2 control-label" for="inputEmail">Email Id</label>
						<div class="col-lg-10">
						<input class="form-control"id="inputEmail" placeholder="Email Id" type="text">
						
						</div>
						</div>
						<div class="form-group">
						<label class="col-lg-2 control-label" for="inputMessage">Description</label>
						<div class="col-lg-10">
						<textarea class="form-control" id="inputMessage" placeholder="Message" rows="3"></textarea>
						<button class="btn btn-success pull-right" type="submit">Send Message</button>
						</div>
						</div>
						
					</form>
					</div><!-- end modal body -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
					</div>

				</div>

			</div>
		</div>
		
	</div>
</body>
</html>