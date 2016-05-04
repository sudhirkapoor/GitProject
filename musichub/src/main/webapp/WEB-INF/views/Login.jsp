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

<div class="navbar navbar-inverse row">
<div class="col-sm-7">

</div>
<div class="col-sm-5">
 <ul class="nav navbar-nav">

<li><a href="">Home</a></li>
<li><a href="#">About US</a></li>
<li class="dropdown"><a data-toggle="dropdown" href="Product">Product <span class="caret"></span></a>
<ul class="pmenu dropdown-menu">
<li><a href="Product">Guitar</a></li>
<li><a href="Product">Piano</a></li>
<li><a href="Product">Flute</a></li>

</ul>
</li>
<li><a href="Register">Register</a></li>
<li><a href="Login">Login</a></li>

</ul></div>

<!-- <div class ="col-sm-8"></div>
<div class ="col-sm-2"><li><a href="#">Register</a></li></div>
<div  class ="col-sm-2"><li><a href="#">Login</a></li></div>
</div>
 -->

</div>


</div>
<div class="row">
<div class="col-md-5">
</div>
<div class="col-md-3">
<form>
<label style="font-size:20px">Sign UP</label>
    <div class="form-group">

        <label>Email</label>

        <input type="email" class="form-control" id="inputEmail" placeholder="Email">

    </div>

    <div class="form-group">
        <label> Password</label>

        <input type="password" class="form-control" id="inputPassword" placeholder="Password">

    </div>

    <div class="checkbox">

        <label><input type="checkbox"> Remember me</label>

    </div>

    <button type="submit" class="btn btn-primary">Login</button>

</form>

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
