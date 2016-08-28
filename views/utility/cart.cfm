<!DOCTYPE html>
<html>
	<head>
		<title>
			Your Cart
		</title>

			<meta charset="utf-8">
	  		<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
			<link rel="stylesheet" href = "../assets/css/bootstrap.min.css">
			<link rel="stylesheet" href = "../assets/css/page-stylesheet.css">
			<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
	</head>
		<body>
					<cfinclude template = "/mindkart/views/layout/header.cfm">
					<cfinclude template = "/mindkart/views/layout/navbar.cfm">
					<cfquery
								name = "showFromDb"
								dataSource = "mindkart"
								>
								SELECT ProductName, Make, Model, ImagePath,ProductDescription
								FROM Product
								WHERE ProductId = '20'
					</cfquery>
					<cfoutput query="showFromDb">
						Product Name : - #showFromDb.ProductName#</br>
						Manufacturer :-  #showFromDb.Make# </br>
						Product Description :- #showFromDb.ProductDescription#
						</br>
						<!--- <cfdump var="#showFromDb.ImagePath#"><cfabort> --->

						<img src = "#showFromDb.ImagePath#" alt="errorImage" height = "20%" width = "10%">

						</cfoutput>
						<!--- <cfdump var="#showFromDb.ImagePath#"><cfabort> --->


					<cfinclude template = "/mindkart/views/layout/footer.cfm">



		</body>
</html>













