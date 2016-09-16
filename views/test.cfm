<!---
===============================================================
FILE NAME : test.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO TEST DIFFERENT FUNCTION
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
		<link rel="stylesheet" href = "../assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "../assets/css/page-stylesheet.css">
		<script type = "text/javascript"  src = "../assets/js/jquery-3.1.0.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type = "text/javascript"  src = "../assets/js/side-menu.js"></script>

	</head>
		<body>
			<html>
<head>
    <title>Shopping Cart</title>
</head>
<cfscript>
CartItems=4;
Cart = ArrayNew(1);
for ( i=1; i LE cartItems; i=i+1)
{
    Cart[i]=StructNew();
    Cart[i].ID=i;
    Cart[i].Name="Product " & i;
    Cart[i].SKU=i*100+(2*i*10)+(3*i);
    Cart[i].Qty=3*i-2;
}
</cfscript>

<body>
Your shopping cart has the following items.<br>
You can change your order quantities.<br>
If you don't want any item, clear the item's check box.<br>
When you are ready to order, click submit.<br>
<br>
<cfform name="ShoppingCart" action="/mindkart/controllers/ShoppingCartAction.cfm" method="post">
<table>
    <tr>
    <td>Order?</td>
    <td>Product</td>
    <td>Code</td>
    <td>Quantity</td>
    </tr>
    <cfloop index="i" from="1" to="#cartItems#">
        <tr>
        <cfset productName= "product_" & Cart[i].ID>
        <cfset skuName= "sku_" & Cart[i].ID>
        <cfset qtyname= "qty_" & Cart[i].ID>
        <td><cfinput type="checkbox" name="itemID" value="#Cart[i].ID#" checked>
             </td>
        <td><cfinput type="text" name="#productName#" value="#Cart[i].Name#"
             passThrough = "readonly = 'True'"></td>
        <td><cfinput type="text" name="#skuName#" value="#Cart[i].SKU#"
             passThrough = "readonly = 'True'"></td>
        <td><cfinput type="text" name="#qtyName#" value="#Cart[i].Qty#">
             </td>
        </tr>
    </cfloop>
</table>
<input type="submit" name="submit" value="submit">
</cfform>

</body>
</html>
		</body>
</html>









<cfloop from="1" to="#ArrayLen(session.cartInfo)#" index="i">

	<cfoutput>
	<tr>
		<td>#session.cartInfo[i].Make#<br /></td>
		<td>#session.cartInfo[i].Model#<br /></td>
		<td>#session.cartInfo[i].Name#<br /></td>
		<td>#session.cartInfo[i].Price#<br /></td>
		<td>#session.cartInfo[i].Qty#<br /></td>
	</tr>
	</cfoutput>
	</cfloop>

	<cfoutput>
					<tr>
						<cfset data = session.cartInfo[i]>
						<cfloop collection="#data#" item="key">
					   		<td> #data[key]# </td>
						</cfloop>
					 	<br>
					</tr>
				</cfoutput>