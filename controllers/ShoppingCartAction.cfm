<html>
<head>
    <title>Your Order</title>
</head>
<body>
<cfif isDefined("Form.submit")>
    <cfparam name="Form.itemID" default="">
    <cfoutput>
        You have ordered the following items:<br>
        <br>
        <cfloop index="i" list="#Form.itemID#">
            ProductName: #Form["product_" & i]#<br>
            Product Code: #Form["sku_" & i]#<br>
            Quantity: #Form["qty_" & i]#<br>
			Price: #Form["price_" & i]#<br>
            <br>
        </cfloop>
    </cfoutput>
</cfif>
</body>
</html>