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


<h1>Edit product page</h1>
<p>Here you can edit the existing product.</p>
<p>${message}</p>
<form:form action="${pageContext.request.contextPath}/product/editproduct"
                   method="post" commandName="product" enctype="multipart/form-data">
 
         <form:hidden path="pid" value="${product.pid}" />
 
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="name" cssStyle="color:#ff0000;" />
                <form:input path="name" id="name" class="form-Control" value="${product.name}"/>
            </div>
 
           <div class="form-group">
                <label for="brand">Brand</label>
                <form:errors path="brand" cssStyle="color:#ff0000;" />
                <form:input path="brand" id="brand" class="form-Control" value="${product.brand}" />
            </div>
 
           
 
            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="price" cssStyle="color:#ff0000;" />
                <form:input path="price" id="price" class="form-Control" value="${product.price}" />
            </div>
 
        <!--   ********************************************************  -->
           <div class="form-group">
                <label class="control-label" for="category.cname">Category</label>
    <form:select path="category.cname">
            <form:option value="" label="--- Select ---" />
              <c:forEach items="${product.category.cname}" var="category">
            <form:option value="${product.category.cname}"></form:option>
            </c:forEach>        
    </form:select> 
</div>


 <div class="form-group">
                <label class="control-label" for="supplier.supname">Supplier</label>
    <form:select path="supplier.supname">
            <form:option value="" label="--- Select ---" />
              <c:forEach items="${product.supplier.supname}" var="supplier">
            <form:option value="${product.supplier.supname}"></form:option>
            </c:forEach>        
    </form:select> 
</div>
<!--  ************************************************************** -->
            <div class="form-group">
                <label class="control-label" for="image">Upload Picture</label>
                <form:input id="image" path="image" type="file" class="form:input-large" />
            </div>
            
            
 
  
 
            <br/><br/>
 
            <input type="submit" value="submit" class="btn btn-default"/>
            <a href="<c:url value="/administrator" />" class="btn btn-default">Cancel</a>
 
        </form:form>


<%@include file="footer.jsp" %>

</body>
</html>