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
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href = "assets/css/side-menu-stylesheet.css">
	<link rel="stylesheet" href = "assets/css/bootstrap.min.css">
    <title>Shopping Cart</title>
</head>

<body>
<cfinclude template = "/mindkart/views/layout/header.cfm">
<cfinclude template = "/mindkart/views/layout/navbar.cfm">

<cfform name="ShoppingCart" action="/mindkart/controllers/ShoppingCartAction.cfm" method="post">
<div class = "table-responsive table-hover table-bordered">
<table class = "table">
    <tr class = "cartTable">
    <th>Make</th>
    <th>Price</th>
    <th>Model</th>
    <th>Name</th>
	<th>Quantity</th>
	<th>ProductId</th>
    </tr>

				<cfloop from="1" to="#ArrayLen(session.cartInfo)#" index="i">
					<cfoutput>
						 <tr>
						  <cfset data = session.cartInfo[i]>
						  <cfloop collection="#data#" item="key">
					    		<td>#data[key]# </td>
					 	  </cfloop>
					 	  <br>
					 	 </tr>
					</cfoutput>
				</cfloop>

</table>
</div>
<br>
<div class = "table-responsive">
<input class="btn btn-primary" type="button" name="submit" value="Update Cart">
<input class="btn btn-success" type="submit" name="submit" value="Proceed To Buy" formaction = "/mindkart/views/utility/checkout.cfm">
</div>
</cfform>
<cfinclude template = "/mindkart/views/layout/footer.cfm">
</body>
</html>

 <!--- <cfloop from="1" to="#ArrayLen(session.cartInfo)#" index="i">
			<cfoutput>
				<tr>
				  	<cfset data = session.cartInfo[i]>
				  	COLLECTION/STRUCTURE
				  	<cfdump var="#data#">
				  	SESSION CARTINFO
				  	<cfdump var="#session.cartInfo#">
				  	<cfabort>

				  	<cfloop collection="#data#" item="key">
			    		<td>
				    	<input type="text" name="field" value="#data.ID[key]#" >
				    	<input type="text" name="field" value="#data.MAKE[key]#" >
				    	<input type="text" name="field" value="#data.MODEL[key]#" >
				    	<input type="text" name="field" value="#data.NAME[key]#" >
				    	<input type="text" name="field" value="#data.PRICE[key]#" >
				    	<input type="text" name="field" value="#data.QTY[key]#" >
			    		 <!--- #data[key]# --->
						</td>
			 	   	</cfloop>
			 	 	<br>
			 	 </tr>
			</cfoutput>
	</cfloop> --->

<!--- <!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
</head>
<body>
<table>
			<tr class="cartData">
						<th > Item </th>
						<th > Quantity </th>
						<th > Unit Price</th>
						<th > Unit Shipping Cost</th>
						<th > Subtotal </th>
			</tr>
<cfloop from="1" to="#arrayLen(session.cartInfo)#" index="i">
			 <cfoutput>
				  <cfset data = session.cartInfo[i]>
				  <cfloop collection="#data#" item="key">
			    		<td>#data[key]# </td><br />
			 	 </cfloop>
			 	 <br>
			</cfoutput>
</cfloop>
</body>
</table>
</html> --->