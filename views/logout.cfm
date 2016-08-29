<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
	</head>
		<body>
				<!--- <cfdump var="#session#"><cfabort> --->
				<cfset StructClear(session)>
				<cfset session.loggedin = false>


				<cflocation url = "/mindkart/index.cfm">

		</body>
</html>













