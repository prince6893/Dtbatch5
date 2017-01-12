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
<br><br><br><br>
<h1>List of category</h1>
<p>Here you can see the list of the category, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">id</th><th width="15%">name</th><th width="10%">Description</th><th width="10%">Stock</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="category" items="${Category}">
<tr>
	<td>${category.cid}</td>
	<td>${category.cname}</td>
	<td>${category.description}</td>
	<td>${category.stock}</td>
	<td>
	<a href="${pageContext.request.contextPath}/category/editcategory/${category.cid}">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/category/delete/${category.cid}">Delete</a><br/>
	</td>
	
	
	 
</tr>
</c:forEach>

        
      
     
        </tbody>
</table>

<%@include file="footer.jsp" %>

</body>
</html>