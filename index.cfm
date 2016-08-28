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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href = "assets/css/page-stylesheet.css">
  <link rel="stylesheet" href = "assets/css/bootstrap.min.css">
  <link rel="stylesheet" href = "assets/css/side-menu-stylesheet.css">
  <link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type = "text/javascript"  src = "assets/js/side-menu.js"></script>
</head>
<body>
<cfinclude template = "views/layout/header.cfm">
<cfinclude template = "views/layout/navbar.cfm">
</br></br>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">GET BEST TELEVISIONS</div>
        <div class="panel-body">
			</br>
			<cfscript>
			productCall = request.dbOperation.showProductDetailsIndex(33);
			</cfscript>
		</div>
        <div class="panel-footer"><a href = "/mindkart/views/utility/products.cfm?CategoryId=2">Buy Now !!</div>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">GET BEST LAPTOPS</div>
        <div class="panel-body"  >
			<cfscript>
			productCall = request.dbOperation.showProductDetailsIndex(39);
			</cfscript>

		</div>
        <div class="panel-footer"><a href = "/mindkart/views/utility/products.cfm?CategoryId=3">Buy Now !!</div>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="panel panel-success">
        <div class="panel-heading">GET BEST MOBILES</div>
        <div class="panel-body">
			<cfscript>
			productCall = request.dbOperation.showProductDetailsIndex(25);
			</cfscript>

		</div>
        <div class="panel-footer"><a href = "/mindkart/views/utility/products.cfm?CategoryId=1">Buy Now !!</div>
      </div>
    </div>
  </div>
</div><br>

<br><br>

<cfinclude template = "views/layout/footer.cfm">
</body>
</html>
