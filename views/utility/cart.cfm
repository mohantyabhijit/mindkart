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
    <title>Shopping Cart</title>
</head>
<!---
<cfscript>
CartItems=5;
Cart = ArrayNew(1);
for ( i=1; i LE cartItems; i=i+1)
{
    Cart[i]=StructNew();
    Cart[i].ID=i;
    Cart[i].productName= i;
    Cart[i].manufacturerName=i*100+(2*i*10)+(3*i);
    Cart[i].model=i*100+(2*i*10)+(3*i);
    Cart[i].qty=3*i-2;
    Cart[i].price=3*i*100;
}
</cfscript>

<h3>
	Your shopping cart has the following items.<br>
	You can change your order quantities.<br>
	If you don't want any item, clear the item's check box.<br>
	When you are ready to order, click submit.<br>
</h3>
<br>
 --->
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
			 <cfoutput><tr>
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
<input class="btn btn-success" type="button" name="submit" value="Proceed To Buy">
</div>
</cfform>
<cfinclude template = "/mindkart/views/layout/footer.cfm">
</body>
</html>

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