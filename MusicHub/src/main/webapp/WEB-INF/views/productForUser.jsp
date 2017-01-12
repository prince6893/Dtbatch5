<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>List of Products</title>
<c:if test="${!empty Product}">
<script>

    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]],
            "oSearch" : {"sSearch": searchCondition}
        });
    });
</script>
<%@include file="header.jsp"%>
</head>



<body>

	<br>
	<br>
	<br>
	<br>
	<br>

		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<center>
						<h1>List of Products</h1>
					</center>
					<Br> <Br> <Br> <Br>
				</div>

									<table class="table table-striped table-hover">

										<thead>
											<tr>
												<th width="10%">id</th>
												<th width="10%">image</th>
												<th width="15%">name</th>
												<th width="10%">Brand</th>
												<th width="10%">price</th>
												<th width="10%">Category Id</th>
												<th width="10%">actions</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="product" items="${Product}">
												<tr>
													<td>${product.pid}</td>
													<td><img
														src="<c:url value="/resources/images/${product.pid}.png" />"
														alt="image" style="width: 100%" /></td>

													<td>${product.name}</td>
													<td>${product.brand}</td>
													<td>${product.price}</td>
													<!-- ********************************* -->
													<td>${product.category.cname}</td>

													<td><a
														href="<spring:url value="/viewProduct/${product.pid}" />"><span
															class="glyphicon glyphicon-info-sign">View Product</a>
													</td>


												</tr>
											</c:forEach>




										</tbody>
										</c:if>
									</table> <br> <br> <br> <br> <br> <%@include file="footer.jsp"%>
</body>
</html>