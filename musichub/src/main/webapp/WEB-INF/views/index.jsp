<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
		
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	

	<style type="text/css">
	#imageslider{
	width: 100%;
	height:400px;
	align:center;
	}
	
	.imgcol
	{
	height:200px;
	}
	.container{
	text-align: center;
	}
	.colsize{
	height:200px;
	}
	
	.colsize img
	{
	max-width:100%; 
  max-height:100%;
  margin:auto;
  display:block;
	
	}
	.navbar,.pmenu
	{
	background:black;
	}
	
	.navbar li a,.pmenu
	{
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
	</style>
</head>
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

</ul>
</div>

<!-- <div class ="col-sm-8"></div>
<div class ="col-sm-2"><li><a href="#">Register</a></li></div>
<div  class ="col-sm-2"><li><a href="#">Login</a></li></div>
</div>
 -->

</div>
<div>
<div class="row">
	<div class="col-md-12">
	    <div id="imageslider" class="carousel slide"  data-ride="carousel">
      
        <ol class="carousel-indicators">
            <li data-target="#imageslider" data-slide-to="0" class="active"></li>
            <li data-target="#imageslider" data-slide-to="1"></li>
            <li data-target="#imageslider" data-slide-to="2"></li>
        </ol>   
        
        <div style="height:400px;"  class="carousel-inner">
            <div class="item active">
                <img  src="resources/images/M1.jpg"/>
            </div>
            <div class="item">
                <img  src="resources/images/M2.jpg"/>
            </div>
            <div class="item">
                <img  src="resources/images/M3.jpg"/>
            </div>
        </div>
       
        <a class="carousel-control left" href="#imageslider" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#imageslider" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
</div>
</div>
<p>&nbsp;</p>

<P>&nbsp;</P>
<div class="row">
<div class="col-md-12">
<p>
<font style="size:20px">About MusicHub</font>
Welcome to the MusicHub.com-your destination for the best musical instruments, gear and exclusive content to help you get the sound you're after. 
We offer free shipping (on almost everything) from the biggest online selection of musical instruments and equipment including guitars, effects, 
basses, guitar amplifiers, iOS, keyboards, drums, live sound, DJ, microphones, recording, band and orchestra, folk, accessories, and more.
 You'll even find an unmatched selection of open-box instruments and gear that ships worldwide.
</p>

</div>
</div>
<P>&nbsp;</P>
<div class="row">
<div  class="colsize col-sm-4">
<a href="Product">
<img  src="resources/images/M1.jpg"/>
</a>
</div>
<div class="colsize col-sm-4">
<a href="Product">
<img src="resources/images/M2.jpg"/>
</a>
</div>
<div class="colsize col-sm-4">
<a href="Product">
<img  src="resources/images/M3.jpg"/>
</a>
</div>


	</div>
	<div class="row">
	<P>&nbsp;</P>
	<P>&nbsp;</P>
	<footer> 
       <div class="container"> 
         <p class="text-muted"> All products are for Display only not for Sale </p> 
       </div> 
     </footer> 
	</div>
	
	
	 

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>