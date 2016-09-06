<!---
===============================================================
FILE NAME : logout-action.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO IMPLEMENT LOGOUT
DATE CREATED : 22/08/2016
TIME CREATED : 8:11PM
CREATED BY : Abhijit Mohanty
================================================================
 --->
<cfparam name = "variables.loginResult" type = "boolean" default = false>


<cfscript>


		variables.loginResult = request.dbOperation.checkLoginFromDb();


		if (variables.loginResult == true )
			{
				sessionRotate();
				session.loggedin = true;
				session.name = request.dbOperation.getFirstNameFromDb("Form.email");
				session.userId = request.dbOperation.getUserIdFromDb("Form.email");
				location (url = "/mindkart/index.cfm", addToken = "no");
			}
		else if (variables.loginResult == false)
			{
				location (url = "/mindkart/views/login.cfm?Response=Error", addToken = "no");
			}
</cfscript>
