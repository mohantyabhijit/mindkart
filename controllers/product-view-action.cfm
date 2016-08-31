<!---
===============================================================
FILE NAME : product-view-action.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO CALL METHOD FOR PRODUTCS PAGE
DATE CREATED : 26/08/2016
TIME CREATED : 10:29AM
CREATED BY : Abhijit Mohanty
================================================================
 --->
<!DOCTYPE html>
<html>
<cfscript>
 dbGetDataCall = request.dbOperation.getAllProductsFromDb();
</cfscript>

</html>