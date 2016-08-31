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
    <title>Shopping Cart</title>
</head>
<cfscript>
CartItems=5;
Cart = ArrayNew(1);
for ( i=1; i LE cartItems; i=i+1)
{
    Cart[i]=StructNew();
    Cart[i].ID=i;
    Cart[i].Name="Product " & i;
    Cart[i].SKU=i*100+(2*i*10)+(3*i);
    Cart[i].Qty=3*i-2;
    Cart[i].price=3*i*100;
}
//writedump(session.pid.name);

/*StructClear(cartInfo);*/
/*writedump(cartInfo);abort;*/


</cfscript>
<body>

<cfinclude template = "/mindkart/views/layout/header.cfm">
<cfinclude template = "/mindkart/views/layout/navbar.cfm">
<h3>
	Your shopping cart has the following items.<br>
	You can change your order quantities.<br>
	If you don't want any item, clear the item's check box.<br>
	When you are ready to order, click submit.<br>
</h3>
<br>

<cfform name="ShoppingCart" action="/mindkart/controllers/ShoppingCartAction.cfm" method="post">
<table>
    <tr>
    <td>Order</td>
    <td>Product</td>
    <td>Code</td>
    <td>Quantity</td>
	<td>Price</td>
    </tr>
    <cfloop index="i" from="1" to="#cartItems#">
        <tr>
        <cfset productName= "product_" & Cart[i].ID>
        <cfset skuName= "sku_" & Cart[i].ID>
        <cfset qtyname= "qty_" & Cart[i].ID>
		<cfset priceOfProduct= "price_" & Cart[i].ID>
        <td><cfinput type="checkbox" name="itemID" value="#Cart[i].ID#" checked>
             </td>
        <td><cfinput type="text" name="#productName#" value="#Cart[i].Name#"
             passThrough = "readonly = 'True'"></td>
        <td><cfinput type="text" name="#skuName#" value="#Cart[i].SKU#"
             passThrough = "readonly = 'True'"></td>
        <td><cfinput type="text" name="#qtyName#" value="#Cart[i].Qty#">
             </td>
		<td><cfinput type="text" name="#priceOfProduct#" value="#Cart[i].price#">
             </td>
        </tr>
    </cfloop>
</table>
<input type="submit" name="submit" value="submit">
</cfform>
<cfinclude template = "/mindkart/views/layout/footer.cfm">
</body>
</html>
