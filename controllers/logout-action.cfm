<!---
===============================================================
FILE NAME : logout-action.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO IMPLEMENT LOGOUT
DATE CREATED : 26/08/2016
TIME CREATED : 10:42PM
CREATED BY : Abhijit Mohanty
================================================================
 --->
				<cfset StructClear(session)>
				<cfset StructClear(cookie)>
				<cfset session.loggedin = false>
				<cflocation url = "/mindkart/index.cfm">










