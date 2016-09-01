<!---
  --- db-operations
  --- contains all methods for all db operations
  ---
  --- author: abhijit mohanty
  --- date:   8/24/16
  --->
<cfcomponent accessors="true" output="false" persistent="false">
	<!--- function to get all categories names  --->
	<cffunction
				name = "getAllCategoryNamesFromDb"
				access = "remote"
				returnType = "query">
				<cfquery
						name = "getCategoryNames">
						SELECT TOP 3 CategoryName, CategoryId
						FROM Category
				</cfquery>
	<cfreturn getCategoryNames />
	</cffunction>

	<!--- function to get category name according to category id  --->
	<cffunction
				name = "getCategoryNameFromDb"
				access = "remote"
				returnType = "string">
				<cfargument
							name = "categoryId"
							default = 1
							type = "numeric">
				<cfquery
						name = "getCategoryName">
						SELECT CategoryName
						FROM Category
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
				</cfquery>
	<cfreturn #getCategoryName.CategoryName# />
	</cffunction>

<!--- function to insert details into db after registration --->
	<cffunction
				name = "insertIntoDb"
				access="remote">

					<cfquery
					name = "pushToDB">
						INSERT INTO UserDetail
						(
							FirstName,
							LastName,
							UserEmail,
							UserPhoneNo,
							Password,
							Dob
						)
						VALUES
						(
							'#Form.fname#',
							'#Form.lname#',
							'#Form.email#',
							'#Form.phno#',
							'#Form.pwd#',
							'#Form.dob#'

						);
					</cfquery>
					<cfset sessionRotate() />
					<cfset session.name = "Form.fname" />
		</cffunction>

<!--- function to get product details for cart --->
<cffunction
				name = "getProductDetails"
				access = "remote"
				returnType = "query">
				<cfargument
							name = "productId"
							default = ""
							type = "numeric">
				<cfquery
						name = "getProductDetailsFromDb">
						SELECT ProductName, Make, Model, Price,ImagePath,ProductDescription
						FROM Product
						WHERE ProductId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.productId#">
				</cfquery>
	<cfreturn getProductDetailsFromDb />
	</cffunction>

<!--- function to store list of product ids under a particular category --->
	<cffunction
				name = "getAllProductIdsFromDb"
				access = "remote"
				returnType = "query">
				<cfargument
						name = "categoryId"
						default=1
						type = "numeric">
				<cfquery
						name = "getProductIds">
						SELECT ProductId
						FROM Product
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
				</cfquery>


	<cfreturn getProductIds />
	</cffunction>
	<!--- function to get picture of first product from a category --->
<cffunction
				name = "getImageOfFirstProductFromDb"
				access = "remote"
				returnType = "query">
				<cfargument
						name = "categoryId"
						default=1
						type = "numeric">
				<cfquery
						name = "getFirstImagePath">
						SELECT TOP 1 ImagePath
						FROM Product
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
				</cfquery>
		<cfreturn getFirstImagePath>
</cffunction>

	<!--- function to check data from db after login and set login variables --->
		<cffunction access="remote" name = "checkLoginFromDb" returntype = "any" output="true">
			<cfdump var="in function">
				<cfif NOT IsDefined ("session.loggedin") OR session.loggedin EQ false>

					<cfquery
						name = "accessDB">
						SELECT FirstName FROM UserDetail
						WHERE  UserEmail = '#Form.email#'
						AND Password = '#Form.pwd#'
	 				</cfquery>

					<cfif accessDB.RecordCount NEQ 0 >
						<!--- login is now succesful , set CFID as seesion.id --->
						<cfset sessionRotate() />
						<cfset session.loggedin = true />
						<cfset session.name = accessDb.FirstName />
						<cflocation url = "/mindkart/index.cfm" addToken = "no">
					<cfelse>
						<blockquote>
							<h1>
								User Name or Password Not Correct.</br>
								Please try again.
							</h1>
						</blockquote>
					</cfif>
				<cfelse >
					<cfoutput>
						Please try again.You cannot view this page without logging in.
					</cfoutput>
				</cfif>

			</cffunction>
</cfcomponent>