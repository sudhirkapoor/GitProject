
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	var app = angular.module("searchApp", []).controller("TableCtrl",
			function($scope) {

				$scope.products=${data1};
				

			});
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


<body ng-app="searchApp">

	<p>&nbsp;</p>

	<div class="container">
		<div class="navbar navbar-inverse row">
			<div class="col-sm-7"></div>
			<div class="col-sm-5">
				<ul class="nav navbar-nav">

					<li><a href="">Home</a></li>
					<li><a href="Aboutus">About US</a></li>
					<li class="dropdown"><a data-toggle="dropdown" href="Product">Product
							<span class="caret"></span>
					</a>
						<ul class="pmenu dropdown-menu">
							<li><a href="Product">Guitar</a></li>
							<li><a href="Product">Piano</a></li>
							<li><a href="Product">Flute</a></li>

						</ul></li>
					<li><a href="Register">Register</a></li>
					<li><a href="Login">Login</a></li>

				</ul>
			</div>

			<!-- <div class ="col-sm-8"></div>
<div class ="col-sm-2"><li><a href="#">Register</a></li></div>
<div  class ="col-sm-2"><li><a href="#">Login</a></li></div>
</div>
 -->

		</div>

	</div>
	<div class="container" ng-controller="TableCtrl">

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
