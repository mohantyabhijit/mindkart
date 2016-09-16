<!---
===============================================================
FILE NAME : order.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW FINAL ORDER
DATE CREATED : 06/09/2016
TIME CREATED : 5:05PM
CREATED BY : Abhijit Mohanty
================================================================
 --->
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href = "assets/css/side-menu-stylesheet.css">
	<link rel="stylesheet" href = "assets/css/bootstrap.min.css">
	<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
    <title>Order</title>
</head>

<body>
	<cfinclude template = "/mindkart/views/layout/header.cfm">
	<cfinclude template = "/mindkart/views/layout/navbar.cfm">
	<cfset variables.orderDetailCall = request.dbOperation.getOrderDetails()>
		<h1 align="center"> Congratulations !!! You have successfully placed the order.</h1>
		<h3 align="center"> To view your order please click orders tab. </h3>

	<!---
<div class = "table-responsive table-hover table-bordered">
	<table class = "table">
    <tr class = "cartTable">
    <th>Make</th>
    <th>Price</th>
    <th>Model</th>
    <th>Name</th>
	<th>Quantity</th>
    </tr>
	<cfloop from="1" to="5" index="i">
		<cfoutput>
			<tr>
				<!---<cfset data = variables.orderDetailCall>  --->
				<!--- <cfdump var="#variables.orderDetailCall#"><cfabort> --->

				<cfloop query="#variables.orderDetailCall#" >
					<td> #variables.orderDetailCall.OrderedQuantity# <br> </td>
			   		<td> #variables.orderDetailCall.OrderedTime# <br> </td>
			   		<td> #variables.orderDetailCall.AddressId# <br> </td>
				</cfloop>
			 	<br>
			</tr>
		</cfoutput>
	</cfloop>
</table>
 --->

<!--- 	<cfdump var="#variables.orderDetailCall#"> --->
	<br/><br /><br /><br /><br /><br />
	<cfinclude template = "/mindkart/views/layout/footer.cfm">
</body>
</html>
<!--- <cfdocument format="PDF" filename="order-detail-mindkart.pdf" overwrite="Yes">
		<!DOCTYPE html>
		<html>
		<head>

		</head>
		<body>
		<h1 align="center"> Congratulations !!! You have successfully placed the order.</h1>
								<h3 align="center"> Order Details </h3>
									<table class = "table">
										<tr class = "orderTable">

										</tr>
									</table>
		</body>
		</html>
</cfdocument>
<cfheader name="Content-Disposition" value="attachment;filename=order-detail-mindkart.pdf">
 --->