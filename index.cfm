<!---
NAME : index.cfm
FILE TYPE : ColdFusion Markup Language Page
PURPOSE : HOME PAGE OF THE APPLICATION
DATE CREATED : 19/08/2016
CREATED BY : ABHIJIT MOHANTY
--->

<!DOCTYPE html>
<html lang="en">
<head>
  <title>MindKart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href = "assets/css/page-stylesheet.css">
  <link rel="stylesheet" href = "assets/css/bootstrap.min.css">
  <link rel="stylesheet" href = "assets/css/side-menu-stylesheet.css">
  <link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type = "text/javascript"  src = "assets/js/side-menu.js"></script>
</head>
<body>
<cfinclude template = "views/layout/header.cfm">
<cfinclude template = "views/layout/navbar.cfm">

<cfset queryToLoopCategory = request.dbOperation.getAllCategoryNamesFromDb()>
<div class="container">
					  <div class="row">
<cfloop query = "queryToLoopCategory">

	<div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">
								<cfoutput>
									Get Best #queryToLoopCategory.CategoryName#
								</cfoutput>
							</div>
					        <div class="panel-body"  >
								<cfoutput>
								  <cfset imagePath = request.dbOperation.getImageOfFirstProductFromDb(queryToLoopCategory.CategoryId)>
								  <img src = "#imagePath.ImagePath#" alt="#queryToLoopCategory.CategoryName#Image" class="img-responsive"  width = "100%">;
								</cfoutput>
							</div>
						         <cfoutput>
						         <div class="panel-footer"><a href = "/mindkart/views/utility/products.cfm?CategoryId=#queryToLoopCategory.CategoryId#">Buy Now !!</a></div>
						         </cfoutput>
							</div>
						</div>
					</cfloop>
			</div>
		</div>

<br><br>

<cfinclude template = "views/layout/footer.cfm">
</body>
</html>
