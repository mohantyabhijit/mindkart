<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "../assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "../assets/css/page-stylesheet.css">
		<script type = "text/javascript"  src = "../assets/js/jquery-3.1.0.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type = "text/javascript"  src = "../assets/js/side-menu.js"></script>
	</head>
		<body>

			<cfinclude template="/mindkart/views/layout/header.cfm">
			<cfinclude template="/mindkart/views/layout/navbar.cfm">


			<div id="showCategories">

			<!--- <cfquery
					name = "showAllCategories"
					dataSource = "mindkart"
					>
					SELECT TOP 7 CategoryName FROM Category
					WHERE CategoryId > 0;
			</cfquery>
			<cfoutput query = "showAllCategories">#showAllCategories.CategoryName##showAllCategories.CategoryName#</cfoutput>
				<cfinclude template="footer.cfm"> --->
			</div>
		</body>
</html>