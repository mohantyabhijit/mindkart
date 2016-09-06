<!---
===============================================================
FILE NAME : checkout.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO DO CHECKOUT
DATE CREATED : 05/09/2016
TIME CREATED : 11:43AM
CREATED BY : Abhijit Mohanty
================================================================
 --->
<html>
<head>
	<link rel="stylesheet" href = "assets/css/side-menu-stylesheet.css">
	<link rel="stylesheet" href = "assets/css/bootstrap.min.css">
    <title>Checkout</title>
</head>

<body>
<cfinclude template = "/mindkart/views/layout/header.cfm">
<cfinclude template = "/mindkart/views/layout/navbar.cfm">

<form name = "addressForm" class = "form-inline" method = "post" action = "">
	<div class="form-group" id="div-submit">
		<div class="col-lg-12">
		     <button type="submit" class="btn btn-danger" formaction = "/mindkart/views/address.cfm" >Continue As Guest</button>
		     <!--- <button type="submit" class="btn btn-success" formaction = "/mindkart/views/login.cfm?From=Checkout" >Login as Registered User</button> --->
		     <button type="submit" class="btn btn-success" formaction = "/mindkart/views/address.cfm" >Login as Registered User</button>
		</div>
	</div>
</form>



<br><br><br><br><br><br><br><br><br>
<cfinclude template = "/mindkart/views/layout/footer.cfm">
</body>
</html>