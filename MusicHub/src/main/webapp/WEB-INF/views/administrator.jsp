<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Home page</title>
</head>
<body>
<%@include file="header.jsp" %>

<br>

<br>
<br><br><br><br>



${message}
<br>
<center>
<a href="${pageContext.request.contextPath}/product/add.html">AddProduct</a>
<br><br>
<a href="${pageContext.request.contextPath}/product/list.html">Product list</a>
<br><br>
<a href="${pageContext.request.contextPath}/category/add">AddCategory</a>
<br><br>
<a href="${pageContext.request.contextPath}/category/list">Category list</a>
<br><br>
<a href="${pageContext.request.contextPath}/supplier/add">Add Supplier</a>
<br><br>
<a href="${pageContext.request.contextPath}/supplier/list">Supplier list</a>
</center>
<br><br><br>

<br>
<br><br><br><br>
<br><br><br><br>
<%@include file="footer.jsp" %>

</body>
</html>