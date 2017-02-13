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
<div class="container">
<h1>List of supplier</h1>
<p>Here you can see the list of the supplier, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" class="table table-hover">
<thead>
<tr>
<th width="10%">id</th><th width="15%">name</th><th width="10%">Brand</th><th width="10%">Email</th>

<th width="10%">Address</th><th width="10%">Mobile No.</th><th width="10%"> Selling Product</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="supplier" items="${Supplier}">
<tr>
	<td>${supplier.sid}</td>
	<td>${supplier.supname}</td>
	<td>${supplier.brand}</td>
	<td>${supplier.supemail}</td>
	<td>${supplier.supaddress}</td>
		<td>${supplier.supnumber}</td>
	<td>${supplier.supproduct}</td>
	<td>
	<a href="${pageContext.request.contextPath}/supplier/editsupplier/${supplier.sid}">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/supplier/delete/${supplier.sid}">Delete</a><br/>
	</td>
	
	
	 
</tr>
</c:forEach>

        
      
     
        </tbody>
</table>
<br>
<br><br><br>
</div>
<%@include file="footer.jsp" %>

</body>
</html>