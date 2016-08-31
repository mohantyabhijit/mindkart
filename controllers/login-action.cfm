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

<cfscript>
		request.dbOperation.checkLoginFromDb();
</cfscript>
