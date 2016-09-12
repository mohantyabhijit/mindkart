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
			<cftry>
				<cfquery
						name = "getCategoryNames">
						SELECT TOP 3 CategoryName, CategoryId
						FROM Category
				</cfquery>
				<cfreturn getCategoryNames />
			<cfcatch type = "any">

			<cfthrow message = "Query failed.">
			</cfcatch>
			</cftry>

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
			<cftry>
					<cfquery
						name = "getCategoryName">
						SELECT CategoryName
						FROM Category
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
					</cfquery>
					<cfreturn #getCategoryName.CategoryName# />
			<cfcatch type = "any">
			<cfthrow message = "Query failed.">
			</cfcatch>
			</cftry>

	</cffunction>

<!--- function to insert details into db after registration --->

	<cffunction
				name = "insertIntoDb"
				access="remote">
				<cfset variables.salt = Hash( GenerateSecretKey("AES"), "SHA-512" )>
				<cfset variables.hashPassword = Hash( Form.pwd & variables.salt, "SHA-512" )>
				<cftry>
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
							<cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.fname#">,
							<cfqueryparam cfsqltype="cf_sql_varchar" value = "#Form.lname#">,
							<cfqueryparam cfsqltype="cf_sql_varchar" value = "#Form.email#">,
							<cfqueryparam cfsqltype="cf_sql_varchar" value = "#Form.phno#">,
							<cfqueryparam cfsqltype="cf_sql_varchar" value = "#variables.hashPassword#">,
							<cfqueryparam cfsqltype="cf_sql_varchar" value = "#variables.salt#">
						);
					</cfquery>

				<cfcatch type = "any">

				<cfthrow message = "Registration Failed">
				</cfcatch>
				</cftry>

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
			<cftry>
				<cfquery
						name = "getProductDetailsFromDb">
						SELECT ProductName, Make, Model, Price,ImagePath,ProductDescription
						FROM Product
						WHERE ProductId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.productId#">
				</cfquery>
				<cfreturn getProductDetailsFromDb />
			<cfcatch type = "any">
			<cfthrow message = "Query failed.">
			</cfcatch>
			</cftry>

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
			<cftry>
					<cfquery
						name = "getProductIds">
						SELECT ProductId
						FROM Product
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
					</cfquery>
					<cfreturn getProductIds />
			<cfcatch type = "any">
			<cfthrow message = "Query failed.">
			</cfcatch>
			</cftry>
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

			<cftry>
					<cfquery
						name = "getFirstImagePath">
						SELECT TOP 1 ImagePath
						FROM Product
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
					</cfquery>
					<cfreturn getFirstImagePath>

			<cfcatch type = "any">

			<cfthrow message = "Query Failed">

			</cfcatch>
			</cftry>

	</cffunction>

<!--- function to check data from db after login and set login variables --->
		<cffunction access="remote" name = "checkLoginFromDb" returnType = "boolean" output="false">
			<!--- <cftry> --->
				<!--- <cfdump var="#Session#"><cfabort> --->

				<cfif  IsDefined ("session.loggedin") AND session.loggedin EQ false>
				<cfdump var="in">

					<cfquery
						name = "accessDB">
						SELECT FirstName , UserId, HashPassword, Salt
						FROM UserDetail
						WHERE  UserEmail = <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.email#">
	 				</cfquery>


	 				<cfset variables.hashedPassword = Hash( Form.pwd & #accessDB.Salt#, "SHA-512")>

					<cfif ( variables.hashedPassword NEQ #accessDB.HashPassword# )>
						<cfreturn false >
					<cfelse>
						<cfreturn true >
					</cfif>

				</cfif>

			<!--- <cfcatch type = "any">
				<cflocation url = "/mindkart/views/login.cfm" addToken = "no">
			<cfthrow message = "Login failed.">
			</cfcatch>
			</cftry> --->

		</cffunction>

<!--- function to get name from DB by user email --->
		<cffunction access = "remote" name = "getFirstNameFromDb" returnType = "string" output = "false">
					<cfargument
						name = "userEmail"
						default = ""
						type = "string">
				<cftry>
						<cfquery
						name = "getFname">
						SELECT FirstName
						FROM UserDetail
						WHERE  UserEmail = <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.email#">
	 				</cfquery>
			<cfreturn #getFname.FirstName#>
				<cfcatch type = "any">

				<cfthrow message = "Query Failed.">
				</cfcatch>
				</cftry>

	 	</cffunction>
<!--- function to get user id from DB by user email --->
		<cffunction access = "remote" name = "getUserIdFromDb" returnType = "string" output = "false">
				<cfargument
						name = "userEmail"
						default = ""
						type = "string">
				<cftry>
						<cfquery
							name = "getFname">
							SELECT UserId
							FROM UserDetail
							WHERE  UserEmail = <cfqueryparam cfsqltype = "cf_sql_varchar" value = "#Form.email#">
		 			    	</cfquery>

			<cfreturn #getFname.UserId#>

				<cfcatch type = "any">

				<cfthrow message = "Query Failed.">
				</cfcatch>
				</cftry>

	 	</cffunction>

<!--- function to get address of user --->

		<cffunction access = "remote" name = "getAddressFromDb" returnType = "query" output = "false">
				<cfargument
						name = "userId"
						default = 1
						type = "numeric">

						<cfquery
							name = "getAddress">
							SELECT AddressId, HomeAddress, Country, State, City, Zip
							FROM [AddressDetail]
							WHERE UserId = <cfqueryparam cfsqltype = "cf_sql_integer" value = "#session.userId#">
						</cfquery>
				<cfreturn getAddress>
		</cffunction>

<!--- function to add address from checkout page --->
		<cffunction access = "remote" name = "insertAddressToDb" returnType = "boolean" output = "false">
			<cfargument name = "userId" default = 1 type = "numeric">
				<cfquery name = "putAddress">
					INSERT
						INTO AddressDetail
							(
								HomeAddress,
								Country,
							 	State,
								City,
								Zip,
								UserId
							)
						VALUES
							(
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.home#">,
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.country#">,
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.state#">,
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.city#">,
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.pin#">,
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#session.userId#">
							);
				</cfquery>
			<cfreturn true>

		</cffunction>
<!--- function to insert user id and address id to table and get UserOrderId --->
		<cffunction access = "remote" name = "insertUserAddressToDb" returnType = "boolean" output="false">
			<cfargument name = "addressId" default="1" type="numeric">
				<cfquery name = "putUserAddress">
					INSERT
						INTO UserOrderAddress
							(
								UserId,
								AddressId,
								OrderedTime
							)

						VALUES
							(
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#session.userId#">,
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.addressId#">,
								CURRENT_TIMESTAMP
							);

				</cfquery>
			<cfreturn true>
		</cffunction>
<!--- function to get UserOrderId of last inserted address --->
		<cffunction access = "remote" name="getUserOrderId" returnTYpe="string" output="false">
			<cfquery name="getId">
				SELECT TOP 1 UserOrderId FROM UserOrderAddress ORDER BY UserOrderId DESC;
			</cfquery>
		<cfreturn #getId.UserOrderId#>
		</cffunction>
<!--- function to add products from session to db by UserOrderId --->
		<cffunction access="remote" name="pushProductsToDb" returntype="boolean" output="false">
			<cfargument name = "userOrderId" required = "yes"  type="numeric">
			<cfargument name = "productId" required = "yes"  type="numeric">
			<cfargument name = "productQuantity" required = "yes"  type="numeric">
				<cfquery name = "insertProducts">
					INSERT INTO
							OrderDetail
							(
								OrderedQuantity, ProductId, UserOrderId
							)
							VALUES
							(
								<cfqueryparam cfsqltype = "cf_sql_integer" value = "#arguments.productQuantity#">,
								<cfqueryparam cfsqltype = "cf_sql_integer" value = "#arguments.productId#">,
								<cfqueryparam cfsqltype = "cf_sql_integer" value = "#session.userOrderId#">
							);
				</cfquery>
			<cfreturn true>
		</cffunction>
<!--- function to show order details of the user --->
		<cffunction access="remote" name="getOrderDetails" returnType="query" output="false">
			<cfquery name="getOrder">
				SELECT ProductId, OrderedQuantity,OrderedTime, AddressId, UserId FROM OrderDetail
				INNER JOIN UserOrderAddress
				ON OrderDetail.UserOrderId = UserOrderAddress.UserOrderId
				ORDER BY OrderedTime DESC;
			</cfquery>
			<cfreturn getOrder>
		</cffunction>



</cfcomponent>