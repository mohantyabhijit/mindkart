<!---
===============================================================
FILE NAME : checkout-action.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO DO CHECKOUT FUNCTIONS
DATE CREATED : 06/09/2016
TIME CREATED : 2:33PM
CREATED BY : Abhijit Mohanty
================================================================
 --->
<cfscript>
	if (IsDefined ("session.userId"))
		{
			variables.insertAddressCall = request.dbOperation.insertAddressToDb(session.userId);
		}
	else
		{
			location (url = "/mindkart/index.cfm", addToken = "no");
		}
	if (variables.insertAddressCall == true)
		{
			location (url = "/mindkart/views/utility/payment.cfm", addToken = "no");
		}
	else
		{
			location (url = "/mindkart/index.cfm", addToken = "no");
		}
</cfscript>