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
				<cfset variables.salt = Hash( GenerateSecretKey("AES"), "SHA-512" )>
				<cfset variables.hashPassword = Hash( Form.pwd & variables.salt, "SHA-512" )>
					<cfquery
							name = "pushToDB">
						INSERT INTO UserDetail
						(
							FirstName,
							LastName,
							UserEmail,
							UserPhoneNo,
							HashPassword,
							Salt

						)
						VALUES
						(
							'#Form.fname#',
							'#Form.lname#',
							'#Form.email#',
							'#Form.phno#',
							'#variables.hashPassword#',
							'#variables.salt#'


						);
					</cfquery>

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
		<cffunction access="remote" name = "checkLoginFromDb" returntype = "boolean" output="false">

				<cfif NOT IsDefined ("session.loggedin") OR session.loggedin EQ false>

					<cfquery
						name = "accessDB">
						SELECT FirstName , UserId, HashPassword, Salt
						FROM UserDetail
						WHERE  UserEmail = <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.email#">
	 				</cfquery>
					<!--- <cfdump var="#accessDB#"><cfabort> --->

	 				<cfset variables.hashedPassword = Hash( Form.pwd & #accessDB.Salt#, "SHA-512")>
	 				<!--- <cfdump var="#variables.hashedPassword#"><br>
					<cfdump var="#accessDB.HashPassword#"><cfabort> --->

					<cfif ( variables.hashedPassword NEQ #accessDB.HashPassword# )>
						<cfreturn false>
					<cfelse>
						<cfreturn true>
					</cfif>

				</cfif>

		</cffunction>
	<!--- function to get name from DB by user email --->
		<cffunction access = "remote" name = "getFirstNameFromDb" returnType = "string" output = "false">
					<cfargument
						name = "userEmail"
						default = ""
						type = "string">
					<cfquery
						name = "getFname">
						SELECT FirstName
						FROM UserDetail
						WHERE  UserEmail = <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.email#">
	 				</cfquery>
			<cfreturn #getFname.FirstName#>
	 	</cffunction>

</cfcomponent>