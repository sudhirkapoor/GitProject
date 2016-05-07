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


<style type="text/css">
#imageslider {
	width: 100%;
	height: 700px;
	align: center;
}

.imgcol {
	height: 200px;
}

.container {
	text-align: center;
}

.colsize {
	height: 200px;
}

.colsize img {
	max-width: 100%;
	max-height: 100%;
	margin: auto;
	display: block;
}

.navbar, .pmenu {
	background: black;
}

.navbar li a, .pmenu {
	color: white !important;
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

.top {
	height: 100px;
	width: 250px;
}
</style>
</head>
<body>
	<p>&nbsp;</p>

	<div class="container">


		<div class="row">
			<div class="col-md-2">
				<img src="<c:url value="${img}/Music2.jpg"/>"
					class="top img-rounded"></img>


			</div>
			<div class="col-md-7"></div>
			<div class="col-md-3">
				<img src="<c:url value="${img}/Music1.jpg"/>"
					class="top img-rounded"></img>


			</div>
		</div>




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






		<!-- 
		<div class="navbar  navbar-inverse">

			
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

				<ul clas="navbar navbar-nav navbar-right">
					<li><a href="Register"><span
							class="glyphicon glyphicon-user"></span>Sign Up</a></li>
					<li><a href="Login"><span
							class="glyphicon glyphicon-log-in">Login</a></li>

				</ul>
			


	
		</div>
 -->
		<div>
			<div class="row">
				<div class="col-md-12">
					<div id="imageslider" class="carousel slide" data-ride="carousel">

						<ol class="carousel-indicators">
							<li data-target="#imageslider" data-slide-to="0" class="active"></li>
							<li data-target="#imageslider" data-slide-to="1"></li>
							<li data-target="#imageslider" data-slide-to="2"></li>
						</ol>

						<div style="height: 700px;" class="carousel-inner">
							<div class="item active">
								<img class="img-rounded"
									src="<c:url value="${img }/Music1.jpg"/>" />
							</div>
							<div class="item">
								<img class="img-rounded" src="<c:url value="${img }/M2.jpg"/>" />
							</div>
							<div class="item">
								<img class="img-rounded" src="<c:url value="${img }/M3.jpg"/>" />
							</div>
						</div>

						<a class="carousel-control left" href="#imageslider"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="carousel-control right" href="#imageslider"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<p>&nbsp;</p>

		<P>&nbsp;</P>
		<div class="row">
			<div class="col-md-12">

				<div class="panel panel-default">
					<div class="panel-heading"><i><h3><u>MusicHub</u></h3></i></div>
					<div class="panel-body"><h4>Welcome to the MusicHub.com-your
						destination for the best musical instruments, gear and exclusive
						content to help you get the sound you're after. We offer free
						shipping (on almost everything) from the biggest online selection
						of musical instruments and equipment including guitars, effects,
						basses, guitar amplifiers, iOS, keyboards, drums, live sound, DJ,
						microphones, recording, band and orchestra, folk, accessories, and
						more. You'll even find an unmatched selection of open-box
						instruments and gear that ships worldwide.</h4></div>
				</div>


			</div>
		</div>
		<P>&nbsp;</P>
		<div class="row">
			<div class="colsize col-sm-4">
				<a href="Product/Guitar"> <img class="img-rounded"
					src="<c:url value="${img }/Guitar.jpg"/>" />
				</a>
			</div>
			<div class="colsize col-sm-4">
				<a href="Product/Flute"> <img class="img-rounded"
					src="<c:url value="${img }/flute.jpg"/>" />
				</a>
			</div>
			<div class="colsize col-sm-4">
				<a href="Product/Piano"> <img class="img-rounded"
					src="<c:url value="${img }/Piano.png"/>" />
				</a>
			</div>


		</div>
		<div class="row">
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<footer>
				<div class="container">
					<p class="text-muted">All products are for Display only not for
						Sale</p>
				</div>
			</footer>
		</div>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="<c:url value="${btjs }/bootstrap.min.js"/>"></script>
</body>
</html>