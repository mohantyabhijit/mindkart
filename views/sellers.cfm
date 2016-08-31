<!---
===============================================================
FILE NAME : sellers.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW LIST OF SELLERS
DATE CREATED : 26/08/2016
TIME CREATED : 6:30PM
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
  			<link rel="icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
			<title>
				Our Sellers
			</title>
	</head>
		<body>
				<cfinclude template = "/mindkart/views/layout/header.cfm">
				<cfinclude template = "/mindkart/views/layout/navbar.cfm">
				<br/><br/>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">TELEVISION PROVIDER</div>
        <div class="panel-body">
			</br>
			<img src = "/mindkart/assets/images/vu.jpeg" alt="productImage" class="img-responsive"  width = "100%">
		</div>
        <div class="panel-footer">Vu Televisions</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">LAPTOP PROVIDER</div>
        <div class="panel-body"  >
			<img src = "/mindkart/assets/images/lenovo.jpeg" alt="productImage" class="img-responsive"  width = "100%">
		</div>
        <div class="panel-footer">Lenovo Computers</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-success">
        <div class="panel-heading">MOBILE PROVIDER</div>
        <div class="panel-body">
			<img src = "/mindkart/assets/images/samsung.jpeg" alt="productImage" class="img-responsive"  width = "100%">
		</div>
        <div class="panel-footer">Samsung Electronics</div>
      </div>
    </div>
  </div>
</div>
				<cfinclude template = "/mindkart/views/layout/footer.cfm">


		</body>
</html>













