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




					<cfquery
						name = "accessDB"
						dataSource = "mindkart"

						>
						SELECT FirstName FROM UserDetail
						WHERE  UserEmail = '#Form.email#'
						AND Password = '#Form.pwd#'
	 				</cfquery>
					<cfif accessDB.RecordCount NEQ 0 >
						<blockquote>
						<h1 id="login_success">
						<!--- <cfset session.id = session.CFID /> --->
						<cflocation url = "/mindkart/index.cfm">

					<cfelse>
						<blockquote>
							<h1>
								User Name or Password Not Correct.</br>
								Please try again.

							</h1>
						</blockquote>
					</cfif>



				<<!--- div id="formResult">
				<cfform id="formResult" method="post" action="../Views/logout.cfm">
					<cfinput type="submit" id="logout" value="Log Out" name="logout">
					</cfform>
					</div>
					<cfset session.loggedin = true />
					<cfset sessionRotate() />
			<cfelse> --->
					<cfoutput>User Name or Password Not Correct.</br>
							  Please try again.You cannot view this page without logging in.
					</cfoutput>




		</body>
</html>













