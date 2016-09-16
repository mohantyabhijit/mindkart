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
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script type = "text/javascript"  src = "/mindkart/assets/js/cart.js"></script>
		<title>
			Product Detail
		</title>
	</head>
		<body>
			<cfinclude template = "/mindkart/views/layout/header.cfm">
			<cfinclude template = "/mindkart/views/layout/navbar.cfm">
			<br />
			<cfset variables.productId = #URL.ProductId#>
			<cfset variables.productInfo = request.dbOperation.getProductDetails(variables.productId)>
				<div class="container" id="productDetails">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-primary">
					        <div class="panel-heading">
							<cfoutput>
								    <cfset variables.productName = variables.productInfo.ProductName>
								    #productName#
							</cfoutput>
							</div>
					        <div class="panel-body">
								</br>
								<cfset productImagePath = variables.productInfo.ImagePath>
								<cfoutput>
									<img src = "#productImagePath#" alt="#variables.productInfo.ProductName#Image" class="img-responsive"  width = "100%">
								</cfoutput>

							</div>
					        <div class="panel-footer"><button class =" btn btn-success" type = "submit">Proceed to Buy</button></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">Product Details</div>
					        <div class="panel-body"  >
								<cfoutput>
									<b><u>Product Name :</u></b> #productName#<br>
									<b><u>Manufacturer :</u></b>#variables.productInfo.Make#<br>
									<b><u>Model :</u></b> #variables.productInfo.Model#<br>
									<b><u>Product Description :</u></b> #variables.productInfo.ProductDescription#<br>
									<b><u>Price : <i class="fa fa-inr"></i></u></b>#variables.productInfo.Price#
								</cfoutput>
							</div>
							<div class="panel-footer">
								<button class =" btn btn-success" id = "addToCartButton" type = "submit" method = "post" onclick = "addToCart(<cfoutput>#variables.productId#</cfoutput>)">
								<span class = "glyphicon glyphicon-plus"></span> Add to Cart </button>
							</div>
							<span id="cartResult"></span>
					      </div>
					    </div>
						</div>
					</div>
			<cfinclude  template="/mindkart/views/layout/footer.cfm">
		</body>
</html>













