<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "../assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "../assets/css/page-stylesheet.css">
	</head>
		<body>

				<!--- <cfinclude template = "header.cfm">
				<cfinclude template = "navbar.cfm"> --->
				<cftry>
				<cfloop index = "errorIndex" list = "#session.showErrors#" delimiters = ",">
    					<cfoutput>#errorIndex#<br></cfoutput>
				</cfloop>
					<cfcatch type="any">
						<cfthrow message="Some error occured">
					</cfcatch>
				</cftry>
<!--- 				<cfinclude template = "footer.cfm"> --->
				<br>
		</body>
</html>

















