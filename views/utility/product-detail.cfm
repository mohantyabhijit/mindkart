<!---
===============================================================
FILE NAME : product-detail.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW DETAILS OF A PARTICULAR PRODUCT
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
		<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
		<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script type = "text/javascript"  src = "/mindkart/assets/js/cart.js"></script>
	</head>
		<body>
			<cfinclude template = "/mindkart/views/layout/header.cfm">
			<cfinclude template = "/mindkart/views/layout/navbar.cfm">
			<br />
			<cfset arguments.productId = #URL.ProductId#>

				<div class="container" id="productDetails">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-primary">
					        <div class="panel-heading">
						        <cfscript>
							    productNameCall = request.dbOperation.showProductName(arguments.productId);
								</cfscript>
							</div>
					        <div class="panel-body">
								</br>
								<cfscript>
									productCall = request.dbOperation.showImageDetails(arguments.productId);
								</cfscript>
							</div>
					        <div class="panel-footer"><button class =" btn btn-success" type = "submit">Proceed to Buy</button></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">Product Details</div>
					        <div class="panel-body"  >
								<cfscript>
									productDetailsCall = request.dbOperation.showProductDetails(arguments.productId);
								</cfscript>
							</div>
							<div class="panel-footer"><button class =" btn btn-success" id = "addToCartButton"type = "submit" method = "post"  onclick = "addToCart(<cfoutput>#arguments.productId#</cfoutput>)"> Add to Cart</button></div>
							<span id="cartResult"></span>
					      </div>
					    </div>
						</div>
					</div>


			<cfinclude  template="/mindkart/views/layout/footer.cfm">

		</body>
</html>













