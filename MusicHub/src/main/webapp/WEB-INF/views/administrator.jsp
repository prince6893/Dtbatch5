<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Admin page</title>
<style>
.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
body{
	background-repeat: no-repeat;
	-webkit-background-size: cover;
	-moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
}
</style>
</head>

<body background=resources/images/back_signup.jpg>

<%@include file="header.jsp" %>

<br />
<div class="container">
<br></br>

<h1 >Welcome back, Admin!</h1>
<h2>You are authorised to perform the following tasks </h2>
<br>
<br><br>


<div align="center" id="ad">

<a href="${pageContext.request.contextPath}/product/add" class="btn btn-info">Add Product</a>
<br><br>
<a href="${pageContext.request.contextPath}/product/list" class="btn btn-danger">Product list</a>
<br><br>
<a href="${pageContext.request.contextPath}/category/add" class="btn btn-warning">AddCategory</a>
<br><br>
<a href="${pageContext.request.contextPath}/category/list" class="btn btn-info">Category list</a>
<br><br>
<a href="${pageContext.request.contextPath}/supplier/add" class="btn btn-primary">Add Supplier</a>
<br><br>
<a href="${pageContext.request.contextPath}/supplier/list" class="btn btn-default">Supplier list</a>
</div>
</div>

<br><br><br>

<%@include file="footer.jsp" %>

</body>
</html>