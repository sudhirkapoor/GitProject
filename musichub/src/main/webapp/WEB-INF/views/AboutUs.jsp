<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
		
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	</head>
		<style>
	.navbar,.pmenu
	{
	background:black;
	}
	
	.navbar li a,.pmenu
	{
	color:white !important;
	}
	
	.pmenu a:hover{
	background:black;
	font-weight: bold;
	
	}
	.navbar li a:hover{
	font-weight: bold;
	}
	.item{
	max-width:100%; 
  max-height:100%;
	
	}
	.item img{
	max-width:100%; 
  max-height:100%;
  margin:auto;
  
	
	}
	.form-control
	{
	width:380px;
	}
	</style>
	<body>

<p>&nbsp;</p>

<div class="container">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
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
        <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>



</div>
<div class="row">
<div class="col-md-5">
</div>
<div class="col-md-3">

</div>
<div class="col-md-4">
</div>

</div>

	<div class="row">
	<div class="col-md-5">
</div>
<div class="col-md-3">
<P>&nbsp;</P>
	<P>&nbsp;</P>
	<footer> 
       <div class="container"> 
         <p class="text-muted"> All products are for Display only not for Sale </p> 
       </div> 
     </footer> 
</div>
<div class="col-md-4">
</div>
	
	</div>
	
	
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
