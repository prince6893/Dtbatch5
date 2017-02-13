<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>List of Products</title>
</head>
<body>
<%@include file="header.jsp" %>
<br>
<br><br>
<div class="container">
<h1><center>List of Product</center></h1>
<p><center>Here you can see the list of the Products, edit them, remove or update.</center></p>
<center>

<table border="1px" cellpadding="0" cellspacing="0" class="table table-hover">
<thead class="bg-success">
<tr>
<th width="10%">Id</th><th width="10%">Image</th><th width="15%">Name</th><th width="10%">Brand</th>
<th width="10%">Price</th><th width="10%">Category Id</th><th width="10%">Supplier Id</th><th width="10%">Actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="product" items="${Product}">
<tr>
	<td>${product.pid}</td>
		<td><img src="<c:url value="/resources/images/${product.pid}.png" />" alt="image" style="width:100%"/></td>
	
	<td>${product.name}</td>
	<td>${product.brand}</td>
	<td>${product.price}</td>
	<!-- ********************************* -->
	<td>${product.category.cname}</td>
		<td>${product.supplier.supname}</td>
	
	
	<td>
	<a href="${pageContext.request.contextPath}/product/editproduct/${product.pid}">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/product/delete/${product.pid}">Delete</a><br/>
	</td>
</center>	
	
	 
</tr>
</c:forEach>

        
      
     
        </tbody>
</table>
</div><!-- end container -->
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

<br /><br />
<br />

<%@include file="footer.jsp" %>

</body>
</html>