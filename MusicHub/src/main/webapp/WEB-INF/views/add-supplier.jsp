<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add product page</title>
</head>
<body>
<%@include file="header.jsp" %>


<center>
<br>
</br>
<br>
</br>

<h1>Add supplier page</h1>
<p>Here you can add a new Suppliers.</p>
<form:form method="POST" commandName="supplier" action="${pageContext.request.contextPath}/supplier/add/process" modelAttribute="supplier">
<table>
<tbody>
	<tr>
		<td>Name:</td>
		<td><form:input path="supname" />
		</td>
	</tr>
	<tr>
		<td>Address:</td>
		<td><form:input path="supaddress" /></td>
	</tr>
	<tr>
		<td> Mobile Number:</td>
		<td><form:input path="supnumber" /></td>
	</tr>
	
	<tr>
		<td> Email:</td>
		<td><form:input path="supemail" /></td>
	</tr>
	
	<tr>
		<td> Brand:</td>
		<td><form:input path="brand" /></td>
	</tr>
	
	<tr>
		<td>Selling Product:</td>
		<td><form:input path="supproduct" /></td>
	</tr>
	
	<tr>
		<td><button type="button" class="btn btn-primary">Add Supplier</button></td>
		<td></td>
	</tr>
</tbody>
</table>
</form:form>
</center>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>

</br>

		<%@include file="footer.jsp"%>

</body>
</html>