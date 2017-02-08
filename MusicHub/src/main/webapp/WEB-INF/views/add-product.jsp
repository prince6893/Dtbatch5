<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add product page</title>
<style>
td
{
padding-bottom: 10px;
padding-top: 10px;
}


</style>
</head>
<body>

<%@include file="header.jsp" %>
<br>
<center>
<h1>Add product page</h1>
<p>Here you can add a new product.</p>
<form:form method="POST" commandName="product" action="${pageContext.request.contextPath}/product/add/process" enctype="multipart/form-data">

<table>
<tbody>



	<tr>
		<td>Name:</td>
		<td><form:input path="name" placeholder="Name of the Product"  name="name" /></td>
	</tr>
	<tr>
	
		<td>Brand:</td>
		<td><form:input path="brand" placeholder="Brand Name" name="brand" /></td>
	</tr>
	<tr>
		<td>Price:</td>
		<td><form:input path="price"  name="price" /></td>
	</tr>
	
		
		
	
	<tr>
	<td>Category</td>
	<td><form:select path="category.cname" items="${categoryList}" itemValue="cname" itemLabel="cname" />
	</td>
	</tr>

	
	<tr>
	<td>Supplier</td>
	<td><form:select path="supplier.supname" items="${supplierList}" itemValue="supname" itemLabel="supname" />
	</td>
	</tr>
	
	
	
	 <tr>
<td><form:label path="image">Image</form:label></td> 
<td><form:input type="file" id="image" path="image" /></td>
</tr>
	
	<tr>
		<td><input type="submit" value="Add" /></td>
		<td></td>
	</tr>
</tbody>
</table>
</form:form>
</center>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<%@include file="footer.jsp" %>

</body>
</html>
