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

				<cfif session.loggedin EQ false>


					<cfquery
						name = "accessDB"
						dataSource = "mindkart">
						SELECT FirstName FROM UserDetail
						WHERE  UserEmail = '#Form.email#'
						AND Password = '#Form.pwd#'
	 				</cfquery>

					<cfif accessDB.RecordCount NEQ 0 >
						<blockquote>
						<!--- login is now succesful , set CFID as seesion.id --->
						<!--- <cfset session.id EQ session.cfid /> --->
						Login Success
						<cfset session.loggedin = true />
						<!--- <cfdump var="#session.loggedin#"><cfabort> --->
						<cfset session.name = #accessDb.FirstName# />
						<!--- <cfdump var="#session.name#"><cfabort> --->

						<!--- <cfset sessionRotate() /> --->
						<cflocation url = "/mindkart/index.cfm?Name=session.name">

					<cfelse>
						<blockquote>
							<h1>
								User Name or Password Not Correct.</br>
								Please try again.
							</h1>
							<!--- <cflocation url = "/mindkart/views/login.cfm?"> --->
						</blockquote>
					</cfif>

				<cfelse >

					<cfoutput>

						Please try again.You cannot view this page without logging in.
					</cfoutput>

					<!--- <cflocation url = "/mindkart/views/login.cfm"> --->
				</cfif>
	</body>
</html>













