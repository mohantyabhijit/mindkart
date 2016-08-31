<!---
===============================================================
FILE NAME : navbar.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW NAVIGATION BAR
DATE CREATED : 22/08/2016
TIME CREATED : 8:11PM
CREATED BY : Abhijit Mohanty
================================================================
 --->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/side-menu-stylesheet.css">
		<link rel="stylesheet" type= "text/css" href="/mindkart/assets/css/signup-stylesheet.css">
		<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<link rel="icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<script type = "text/javascript"  src = "/mindkart/assets/js/side-menu.js"></script>
	</head>
		<body>
			<!--- <cfdump var="#session.loggedin#"><cfabort> --->
			<!--- <cfdump var="#session.name#"><cfabort> --->

			<div id = "mySidenav" class = "sidenav">
  				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">x</a>
			  	  <a id = "mobiles" name = "mobiles" href = "/mindkart/views/utility/products.cfm?CategoryId=1" onclick = "getCategoryProduct(1)"><strong>Mobiles</strong></a>
				  <a id = "tvs" name = "tvs" href = "/mindkart/views/utility/products.cfm?CategoryId=2" onclick = "getCategoryProduct(2)"><strong>Televisions</strong></a>
				  <a id = "laptops" name = "laptops" href = "/mindkart/views/utility/products.cfm?CategoryId=3" onclick = "getCategoryProduct(3)"><strong>Laptops</strong></a>
				  <!--- <a id = "cameras" name = "cameras" href = "/mindkart/views/utility/products.cfm?CategoryId=4" onclick = "getCategoryProduct(4)">Cameras</a>
				  <a id = "home" name = "home" href = "/mindkart/views/utility/products.cfm?CategoryId=5" onclick = "getCategoryProduct(5)">Home & Furniture</a>
				  <a id = "books" name = "books" href = "/mindkart/views/utility/products.cfm?CategoryId=6" onclick = "getCategoryProduct(6)">Books</a>
				  <a id = "clothing" name = "clothing" href = "/mindkart/views/utility/products.cfm?CategoryId=7" onclick = "getCategoryProduct(7)">Clothing</a> --->
				</div>
			<div id="navbar">
				<nav class="navbar navbar-inverse">
 				 <div class="container-fluid">
   					<div class="navbar-header">
					      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
      						<a class="navbar-brand" onclick = "openNav()" id = "p-side-menu">Categories</a>
    				</div>
				  <div class="collapse navbar-collapse" id="myNavbar">
					      <ul class="nav navbar-nav">
					        <li><a href="/mindkart/index.cfm">Home</a></li>
					        <li><a href="/mindkart/views/sellers.cfm">Sellers</a></li>
					        <li><a href="/mindkart/views/places.cfm">Places</a></li>
					        <li><a href="/mindkart/views/contactus.cfm">Contact Us</a></li>
					      </ul>

					      <cfif IsDefined ("session.name")>
						  <ul class="nav navbar-nav navbar-right">
							  <li><a href="#"><span class="glyphicon glyphicon-user"></span><cfoutput>Hi #session.name#</cfoutput></a></li>
							  <li><a href="/mindkart/controllers/logout-action.cfm"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
					       	  <li><a href="/mindkart/views/utility/cart.cfm"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>

					      </ul>
					      <cfelse>
					      <ul class="nav navbar-nav navbar-right">
					       	  <li><a href="/mindkart/views/login.cfm"><span class="glyphicon glyphicon-user"></span>Login</a></li>
							  <li><a href="/mindkart/views/signup.cfm"><span class="glyphicon glyphicon-user"></span>Register</a></li>
					       	  <li><a href="/mindkart/views/utility/cart.cfm"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					      </ul>
						</cfif>
	 			   </div>
	 			 </div>
				</nav>
			</div>
			</br></br>
		</body>
</html>