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
			<cfset variables.catId = #URL.CategoryId#>
			<cfset variables.CategoryName = request.dbOperation.getCategoryNameFromDb(variables.catId) />

			<cfoutput>
				<title>
					#variables.CategoryName#
				</title>
			</cfoutput>

	</head>
		<body>
				<cfinclude template="/mindkart/views/layout/header.cfm">
				<cfinclude template="/mindkart/views/layout/navbar.cfm">

				</br></br>
			<div class="container">
					  <div class="row">
			<cfif variables.catId GT 0>

				<cfset queryToLoop = request.dbOperation.getAllProductIdsFromDb(variables.catId) />
					<cfloop query = "queryToLoop">
						<cfset variables.productInfo = request.dbOperation.getProductDetails(queryToLoop.ProductId) />
						<div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">
						        <cfset variables.productName = variables.productInfo.ProductName>
							    <cfoutput>#variables.productName#</cfoutput>
							</div>
					        <div class="panel-body"  >
								<cfset imagePath = variables.productInfo.ImagePath>
								<cfoutput>
									<img src = "#imagePath#" alt="#variables.productInfo.ProductName#Image" class="img-responsive"  width = "100%">
								</cfoutput>
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













