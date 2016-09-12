<!---
===============================================================
FILE NAME : cart.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW LIST OF ITEMS PRESENT IN CART
DATE CREATED : 25/08/2016
TIME CREATED : 7:23PM
CREATED BY : Abhijit Mohanty
================================================================
 --->
<html>
<head>
	<link rel="stylesheet" href = "assets/css/side-menu-stylesheet.css">
	<link rel="stylesheet" href = "assets/css/bootstrap.min.css">
	<script type = "text/javascript"  src = "/mindkart/assets/js/cart.js"></script>
    <title>Shopping Cart</title>
</head>

<body>
<cfinclude template = "/mindkart/views/layout/header.cfm">
<cfinclude template = "/mindkart/views/layout/navbar.cfm">

<cfform name="ShoppingCart" action="/mindkart/views/address.cfm" method="post">
<div class = "table-responsive table-hover table-bordered">
<table class = "table">
    <tr class = "cartTable">
    <th>Make</th>
    <th>Price</th>
    <th>Model</th>
    <th>Name</th>
	<th>Quantity</th>
    </tr>
	<cfloop from="1" to="#ArrayLen(session.cartInfo)#" index="i">
		<cfoutput>
			<tr>
				<cfset data = session.cartInfo[i]>
				<cfloop collection="#data#" item="key">
			   		<td> #data[key]# </td>
				</cfloop>
			 	<br>
			</tr>
		</cfoutput>
	</cfloop>
</table>
</div>
<br>

<cfset session.cartLength = ArrayLen (session.cartInfo)>
<div class = "table-responsive">
<input class="btn btn-primary" type="button" name="submit" value="Update Cart">
<input class="btn btn-success" type="submit" name="buy" value="Proceed To Buy" method = "post" formaction = "/mindkart/views/address.cfm">
</div>
</cfform>
<cfinclude template = "/mindkart/views/layout/footer.cfm">
</body>
</html>

