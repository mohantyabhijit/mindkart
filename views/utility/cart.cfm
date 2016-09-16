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

	<link rel="stylesheet" href = "assets/css/bootstrap.min.css">
	<link rel="stylesheet" href = "assets/css/side-menu-stylesheet.css">
	<link rel="stylesheet" href = "assets/css/page-stylesheet.css">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<script type = "text/javascript"  src = "/mindkart/assets/js/cart.js"></script>
    <title>Shopping Cart</title>
</head>

<body>
<cfinclude template = "/mindkart/views/layout/header.cfm">
<cfinclude template = "/mindkart/views/layout/navbar.cfm">
<!--- <cfdump var="#session.cartInfo#"><cfabort> --->
<!---
<cfoutput>
	<cfloop from="1" to="#ArrayLen(session.cartInfo)#" index="i">
		#session.cartInfo[i].Make#<br />
		#session.cartInfo[i].Model#<br />
		#session.cartInfo[i].Name#<br />
		#session.cartInfo[i].Price#<br />
		#session.cartInfo[i].Qty#<br />
	</cfloop>
</cfoutput>
<cfabort>
 --->
<!---
<cfset variables.test = "#session.cartInfo[1].Price#">
<cfdump var="#variables.test#"><cfabort>
 --->


	<cfset variables.grandTotal = 0 >
	<cfif  ArrayLen (session.cartInfo) GT 0	>
		<cfform name="ShoppingCart" action="" method="post">
		<div class = "table-responsive table-hover table-bordered">
		<table class = "table">
		    <tr class = "cartTable">
		    <th>Name</th>
		    <th>Model</th>
		    <th>Quantity</th>
			<th>Unit Cost</th>
			<th>Sub Total</th>
		    </tr>
		<cfloop from="1" to="#ArrayLen(session.cartInfo)#" index="i">
			<cfoutput>
			<tr>
				<td>
					<cfinput class="cartForm" type="text" name="name" value="#session.cartInfo[i].Name#" passThrough = "readonly = 'True'">
				</td>
				<td>
					<cfinput class="cartForm" type="text" name="model" value="#session.cartInfo[i].Model#" passThrough = "readonly = 'True'">
				</td>
				<td class="col-xs-1">
					<button class="btn btn-secondary" type="button" onClick="increaseQuantity()"> <span class="glyphicon glyphicon-plus"></button><br />
						<span id="productQty">#session.cartInfo[i].QTY#</span><br />
					<button class="btn btn-secondary" type="buttton" onClick="decreaseQuantity()"><span class="glyphicon glyphicon-minus"></button><br />
				</td>
				<td>
					<i class="fa fa-inr"></i>
					<cfinput class="cartForm" type="text" name="price" value="#session.cartInfo[i].Price#" passThrough = "readonly = 'True'">
					<cfset variables.productPrice = "#session.cartInfo[i].Price#" >
					<cfset variables.grandTotal = variables.grandTotal + variables.productPrice >
				</td>
				<td>
					<cfset variables.subTotal = #session.cartInfo[i].QTY# * #session.cartInfo[i].Price#>
					<span id="subTotal"><i class="fa fa-inr"></i><cfoutput> #variables.subTotal#</cfoutput></span>
				</td>
				</tr>
			</cfoutput>
		</cfloop>
		</table>
		<hr />

		</div>
		<p id = "grandTotal" class="col-offset-8">Grand Total:<i class="fa fa-inr"></i> <span id="gTotal"><cfoutput>#variables.grandTotal#</cfoutput></span> </p>
		<br>

		<cfset session.cartLength = ArrayLen (session.cartInfo)>
		<div class = "table-responsive">
		<input class="btn btn-success" type="submit" name="buy" value="Proceed To Buy" method = "post" formaction = "/mindkart/views/address.cfm">
		</div>
		</cfform>
	<cfelse>
		<h4 align="center"> You have no items in your cart
			<form action="/mindkart/index.cfm" addToken="no">
			<br /><br />
			<input class="btn btn-info" type="submit" name="back" value="Go Back to Shopping">
			</form>
		</h4>

	</cfif>
	<br /><br /><br /><br /><br /><br /><br /><br />
<cfinclude template = "/mindkart/views/layout/footer.cfm">
</body>
</html>

