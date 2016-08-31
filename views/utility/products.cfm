<!---
===============================================================
FILE NAME : products.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW LIST OF PRODUCTS UNDER A CATEGORY
DATE CREATED : 28/08/2016
TIME CREATED : 5:06PM
CREATED BY : Abhijit Mohanty
================================================================
 --->

<!DOCTYPE html>
<html>
	<head>
			<meta charset="utf-8">
	  		<meta name="viewport" content="width=device-width, initial-scale=1">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
			<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
			<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
			<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
  			<link rel="icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
			<cfif #URL.CategoryId# EQ 1>
			<title>
				Mobiles
			</title>
			<cfelseif #URL.CategoryId# EQ 2>
			<title>
				Televisions
			</title>
			<cfelseif #URL.CategoryId# EQ 3>
			<title>
				Laptops
			</title>
			</cfif>
	</head>
		<body>
				<cfinclude template="/mindkart/views/layout/header.cfm">
				<cfinclude template="/mindkart/views/layout/navbar.cfm">
				<cfset arguments.catId = #URL.CategoryId#>
				</br></br>



			<div class="container">
					  <div class="row">
			<cfif arguments.catId GT 0>

				<cfset queryToLoop = request.dbOperation.getAllProductIdsFromDb(arguments.catId)>
					<cfloop query = "queryToLoop">

						<div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">
								<cfscript>
						        request.dbOperation.showProductName(queryToLoop.ProductId);
								</cfscript>
							</div>
					        <div class="panel-body"  >
								<cfscript>
								request.dbOperation.showImageDetails(queryToLoop.ProductId);
								</cfscript>
							</div>
					        <cfoutput><div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=#queryToLoop.ProductId#">Buy Now !!</a></div></cfoutput>
					      </div>
					    </div>
					</cfloop>
					</div>
				</div>





				<cfinclude template="/mindkart/views/layout/footer.cfm">
			</cfif>
		</body>
</html>













