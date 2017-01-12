<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Edit product page</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="header.jsp" %>
<br><br>
<br><br>


<h1>Edit cc page</h1>
<p>Here you can edit the existing cc.</p>
<p>${message}</p>
<form:form action="${pageContext.request.contextPath}/category/editcategory"
                   method="post" commandName="category" >
 
         <form:hidden path="cid" value="${category.cid}" />
 
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="cname" cssStyle="color:#ff0000;" />
                <form:input path="cname" id="cname" class="form-Control" value="${category.cname}"/>
            </div>
 
           <div class="form-group">
                <label for="description">Description</label>
                <form:errors path="description" cssStyle="color:#ff0000;" />
                <form:input path="description" id="description" class="form-Control" value="${category.description}" />
            </div>
 
           
 
            <div class="form-group">
                <label for="stock">stock</label>
                <form:errors path="stock" cssStyle="color:#ff0000;" />
                <form:input path="stock" id="stock" class="form-Control" value="${category.stock}" />
            </div>
 
           
           
 
          
 
            <br/><br/>
 
            <input type="submit" value="submit" class="btn btn-default"/>
            <a href="<c:url value="/administrator" />" class="btn btn-default">Cancel</a>
 
        </form:form>


<%@include file="footer.jsp" %>

</body>
</html>