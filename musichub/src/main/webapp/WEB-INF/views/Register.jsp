<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
		
	<link rel="stylesheet" href="css/bootstrap.min.css">
	</head>
	<style>
	.navbar
	{
	background:black;
	}
	
	.navbar li a{
	color:white !important;
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
	<script>
	$(function(){

	    $(".dropdown-menu li a").click(function(){

	      $("#dropdownMenu1").text($(this).text());
	      

	   });

	});
	</script>
	<body>

<p>&nbsp;</p>

<div class="container">

<div class="navbar navbar-default row">
<div class="col-sm-7">

</div>
<div class="col-sm-5"> <ul class="nav navbar-nav">
<li><a href="">Home</a></li>
<li><a href="#">About US</a></li>
<li><a href="#">Contact Us</a></li>
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
<label style="font-size:20px">Register</label>
    <div class="form-group">

        <label>Name</label>

        <input type="text" class="form-control" id="inputName" placeholder="Name">

    </div>
       <div class="form-group">
        <label>Choose Username</label>

        <input type="text" class="form-control" id="inputUName" placeholder="User Name">

    </div>

    <div class="form-group">
        <label> Password</label>

        <input type="password" class="form-control" id="inputPassword" placeholder="Password">

    </div>

       <div class="form-group">
        <label>Re-Password</label>

        <input type="password" class="form-control" id="inputPassword" placeholder="Confirm Password">

    </div>

   <div class="form-group">
        <label>Gender</label>

       <div class="dropdown">
  <button class="btn btn-default dropdown-toggle" role="menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Select Gender
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu"  aria-labelledby="dropdownMenu1">
    <li><a tabindex="-1" href="#">Male</a></li>
    <li><a tabindex="-1" href="#">Female</a></li>
    
  </ul>
</div>
    </div>
      <div class="form-group">
        <label>Current Email Address</label>

        <input type="Email" class="form-control" id="inputCEmail" placeholder="Current Email">

    </div>
    <div>
    <button type="submit" class="btn btn-primary">Register</button>
</div>
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
	
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>