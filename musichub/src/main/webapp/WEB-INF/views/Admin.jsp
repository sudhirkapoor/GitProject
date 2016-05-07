
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<c:set var="img" value="/resources/images" />
<c:set var="btcss" value="/resources/bootstrap/css" />
<c:set var="btjs" value="/resources/bootstrap/js" />

<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet"
	href="<c:url value="${btcss }/bootstrap.min.css"/>">

<script src="<c:url value="${btjs }/angular.min.js"/>"></script>

<script>
	/* 	var app = angular.module("searchApp", []).controller("TableCtrl",
	 function($scope) {

	 $scope.products=${data1};
	

	 }); */
</script>

</head>
<style>
.navbar, .pmenu {
	background: black;
}

.navbar li a, .pmenu {
	color: white !important;
}

.pmenu a:hover {
	background: black;
	font-weight: bold;
}

.navbar li a:hover {
	font-weight: bold;
}

.item {
	max-width: 100%;
	max-height: 100%;
}

.item img {
	max-width: 100%;
	max-height: 100%;
	margin: auto;
}

.form-control {
	width: 380px;
}
</style>


<body>

	<p>&nbsp;</p>

	<div></div>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index">MusicHub</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">

						<li><a href="index">Home</a></li>
						<li><a href="Aboutus">About US</a></li>
						<li class="dropdown"><a data-toggle="dropdown" href="Product">Product
								<span class="caret"></span>
						</a>
							<ul class="pmenu dropdown-menu">
								<li><a href="Product">Guitar</a></li>
								<li><a href="Product">Piano</a></li>
								<li><a href="Product">Flute</a></li>

							</ul></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="Register"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="Login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</nav>


	</div>
	<!-- <div ng-app="searchApp"> -->
	<div>

		<div class="container central">
			<h2 class="add-product-heading">Product Details</h2>
			<c:url var="addAction" value="/Admin/addProduct" />



			<form:form action="${addAction}" commandName="product">
				<table>
					<c:if test="${!empty product.name}">
						<tr>
							<td><form:label path="id">
									<spring:message text="ID" />
								</form:label></td>
							<td><form:input path="id" readonly="true" size="8"
									disabled="true" /> <form:hidden path="id" /></td>
						</tr>
					</c:if>
				<%-- 	<tr>
						<td><form:label path="id">
								<spring:message text="id" />
							</form:label></td>
						<td><form:input path="id" /></td>
					</tr> --%>
					<tr>
						<td><form:label path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td><form:label path="brand">
								<spring:message text="brand" />
							</form:label></td>
						<td><form:input path="brand" /></td>
					</tr>
					<tr>
						<td><form:label path="description">
								<spring:message text="description" />
							</form:label></td>
						<td><form:input path="description" /></td>
					</tr>

					<tr>
						<td><form:label path="price">
								<spring:message text="price" />
							</form:label></td>
						<td><form:input path="price" /></td>
					</tr>

					<tr>
						<td><form:label path="catagory">
								<spring:message text="catagory" />
							</form:label></td>
						<td><form:input path="catagory" /></td>
					</tr>

					<tr>
						<td colspan="2"><c:if test="${!empty product.name}">
								<input type="submit"
									value="<spring:message text="Edit"/>" />
							</c:if> <c:if test="${empty product.name}">
								<input type="submit" value="<spring:message text="Add"/>" />
							</c:if></td>
					</tr>
				</table>
			</form:form>

			<%-- 			<form:form action="${addAction}" commandName="product">

				<c:if test="${!empty product.name}">
					<tr>
						<td><form:label path="id">
								<spring:message text="ID" />
							</form:label></td>
						<td><form:input path="id" readonly="true" size="8"
								disabled="true" /> <form:hidden path="id" /></td>
					</tr>
					<div class="row">
					<div class=col-xs-6>
						<form:label path="id">
							<spring:message text="ID" />
						</form:label>
					</div>
					<div class=col-xs-6>
						<form:input path="id" readonly="true" size="8"
								disabled="true" /> <form:hidden path="id" />
					</div>
				</div>
				</c:if>

				<div class="row">
					<div class=col-xs-6>
						<form:label path="id">
							<spring:message text="ID" />
						</form:label>
					</div>
					<div class=col-xs-6>
						<form:input path="id" />
						<form:hidden path="id" />
					</div>
				</div>
				<div class="row">
					<div class=col-xs-6>
						<form:label path="name">
							<spring:message text="NAME" />
						</form:label>
					</div>
					<div class=col-xs-6>
						<form:input path="name" />
					</div>
				</div>
				<div class="row">
					<div class=col-xs-6>
						<form:label path="brand">
							<spring:message text="BRAND" />
						</form:label>
					</div>
					<div class=col-xs-6>
						<form:input path="brand" />
					</div>
				</div>
				<div class="row">
					<div class=col-xs-6>
						<form:label path="catagory">
							<spring:message text="CATEGORY" />
						</form:label>
					</div>
					<div class=col-xs-6>
						<form:input path="catagory" />
					</div>
				</div>
				<div class="row">
					<div class=col-xs-6>
						<form:label path="price">
							<spring:message text="PRICE" />
						</form:label>
					</div>
					<div class=col-xs-6>
						<form:input path="price" />
					</div>
				</div>
				<div class="row">
					<div class=col-xs-6>
						<form:label path="description">
							<spring:message text="DESCRIPTION" />
						</form:label>
					</div>
					<div class=col-xs-6>
						<form:input path="description" />
					</div>
				</div>
				<div class="row">
					<div class=col-xs-6>
						<c:if test="${!empty product.name}">
							<input type="submit"
								value="<spring:message text="Update Product"/>">
						</c:if>
					</div>
					<div class=col-xs-6>
						<c:if test="${empty product.name}">
							<input type="submit" value="<spring:message text="Add Product"/>">
						</c:if>
					</div>

				</div>

			</form:form> --%>
		</div>
		<div>
			<h3>Persons List</h3>
			<c:if test="${!empty listProduct}">
				<table class="tg">
					<tr>
						<th width="80">Product ID</th>
						<th width="120">Product Name</th>
						<th width="120">Brand</th>
						<th width="120">Description</th>
						<th width="120">Price</th>
						<th width="120">Category</th>
						<th width="60">Edit</th>
						<th width="60">Delete</th>
					</tr>
					<c:forEach items="${listProduct}" var="product">
						<tr>
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.brand}</td>
							<td>${product.description}</td>
							<td>${person.price}</td>
							<td>${person.catagory}</td>
							<td><a
								href="<c:url value='/Admin/editProduct/${product.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='/Admin/deleteProduct/${product.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>



		<%-- 	<div class="container" ng-controller="TableCtrl">

		<div class="row">
			<div class="col-md-8"></div>

			<div class="col-md-4 input-group">

				<label>Search your product</label> <input type="search"
					ng-model="searchText" class="form-control" id="inputSearch"
					placeholder="Search Here" />
				<!-- <input type="search" ng-model="searchText.city" class="form-control" id="inputSearch" placeholder="Search Here"/> -->

			</div>
			<p>&nbsp; &nbsp;</p>
			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">
					
						<table class="table table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Brand</th>
									<th>Description</th>
									<th>Price</th>
									<th>Catagory</th>
									<th>More</th>
								</tr>
							</thead>

							<tbody>

								<tr ng-repeat="p in products | filter:searchText">

									<td>{{p.id}}</td>
									<td>{{p.name}}</td>
									<td>{{p.brand}}</td>
									<td>{{p.description}}</td>
									<td>{{p.price}}</td>
									<td>{{p.catagory}}</td>
									<td>
									<form action="ProductDetails" method="get">
									<input type="hidden" value="{{p.id}}"
										name="id"></input>
										<input type="hidden" value="{{p.name}}"
										name="name"></input>
										<input type="hidden" value="{{p.brand}}"
										name="brand"></input>
										<input type="hidden" value="{{p.description}}"
										name="description"></input>
										<input type="hidden" value="{{p.price}}"
										name="price"></input>
										<button type="submit">
											<span class="glyphicon glyphicon-plus-sign"></span>
										</button> 
										</form>
									</td>


								</tr>

							</tbody>

						</table>
					
				</div>

				<div class="col-md-2"></div>

			</div>

			<div class="row">
				<div class="col-md-2"></div>
			</div>

 --%>
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-3">
				<P>&nbsp;</P>
				<P>&nbsp;</P>
				<footer>
					<div class="container">
						<p class="text-muted">All products are for Display only not
							for Sale</p>
					</div>
				</footer>
			</div>
			<div class="col-md-4"></div>

		</div>


	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
