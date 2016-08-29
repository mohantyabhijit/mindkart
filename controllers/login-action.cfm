

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
						<cfset sessionRotate() />
						<cfset session.loggedin = true />
						<cfset session.name = #accessDb.FirstName# />
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
				</cfif>













