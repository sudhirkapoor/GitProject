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
<script>
	$(function() {

		$(".dropdown-menu li a").click(function() {

			$("#dropdownMenu1").text($(this).text());

		});

	});
</script>
<body>

	<p>&nbsp;</p>

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

		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-3">
				<form>
					<label style="font-size: 20px">Register</label>
					<div class="form-group">

						<label>Name</label> <input type="text" class="form-control"
							id="inputName" placeholder="Name">

					</div>
					<div class="form-group">
						<label>Choose Username</label> <input type="text"
							class="form-control" id="inputUName" placeholder="User Name">

					</div>

					<div class="form-group">
						<label> Password</label> <input type="password"
							class="form-control" id="inputPassword" placeholder="Password">

					</div>

					<div class="form-group">
						<label>Re-Password</label> <input type="password"
							class="form-control" id="inputPassword"
							placeholder="Confirm Password">

					</div>

					<div class="form-group">
						<label>Gender</label>

						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" role="menu"
								type="button" id="dropdownMenu1" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								Select Gender <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li><a tabindex="-1" href="#">Male</a></li>
								<li><a tabindex="-1" href="#">Female</a></li>

							</ul>
						</div>
					</div>
					<div class="form-group">
						<label>Current Email Address</label> <input type="Email"
							class="form-control" id="inputCEmail" placeholder="Current Email">

					</div>
					<div>
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
				</form>

			</div>
			<div class="col-md-4"></div>

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
