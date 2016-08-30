<!---
  --- db-operations
  --- -------------
  ---
  --- author: abhijitm
  --- date:   8/24/16
  --->
<cfcomponent accessors="true" output="false" persistent="false">
	<cffunction
				name = "insertIntoDb"
				access="remote"
				>

					<cfquery
					name = "pushToDB"


					>
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
<!--- function to show the image of a product from DB using Product Id --->
	<cffunction
				name = "showImageDetails"
				access = "remote" >
				<cfargument
							name = "productId"
							default = ""
							type = "numeric">
				<cfquery
								name = "showImageFromDb"
								dataSource = "mindkart">
								SELECT ImagePath
								FROM Product
								WHERE ProductId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.productId#">
				</cfquery>
				<cfoutput query="showImageFromDb">
					<img src = "#showImageFromDb.ImagePath#" alt="productImage" class="img-responsive"  width = "100%">
				</cfoutput>
	</cffunction>
	<!--- function to show all product details from DB using Product Id --->
	<cffunction
				name = "showProductDetails"
				access = "remote">
				<cfargument
							name = "productId"
							default = ""
							type = "numeric">
				<cfquery
								name = "showProductFromDb"
								dataSource = "mindkart">
								SELECT ProductName, Make, Model,ProductDescription,Price
								FROM Product
								WHERE ProductId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.productId#">
				</cfquery>
				<cfoutput query="showProductFromDb">
						<u>Product Name :- </u> #showProductFromDb.ProductName# <br />
						<u>Manufacturer :- </u> #showProductFromDb.Make# <br />
						<u>Model :- </u> #showProductFromDb.Model# <br />
						<u>Product Description </u>:- <br />#showProductFromDb.ProductDescription# <br />
						<u>Price :-</u> Rs.#showProductFromDb.Price# <br />
				</cfoutput>
	</cffunction>
	<!--- function to get only product name for thumbnails --->
	<cffunction
				name = "showProductName"
				access = "remote">
				<cfargument
							name = "productId"
							default = ""
							type = "numeric">
				<cfquery
								name = "showProductNameFromDb"
								dataSource = "mindkart">
								SELECT ProductName
								FROM Product
								WHERE ProductId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.productId#">
				</cfquery>
				<cfoutput query="showProductNameFromDb">
						 #showProductNameFromDb.ProductName# <br />
				</cfoutput>
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
	<!--- function to get all catrgories names  --->
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
<!--- function to get picture of first product from a category --->
<cffunction
				name = "getImageOfFirstProductFromDb"
				access = "remote"
				returnType = "any">
				<cfargument
						name = "categoryId"
						default=1
						type = "numeric">
				<cfquery
						name = "getImage">
						SELECT TOP 1 ImagePath
						FROM Product
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
				</cfquery>
				<cfoutput>
					<img src = "#getImage.ImagePath#" alt="productImage" class="img-responsive"  width = "100%">
				</cfoutput>

</cffunction>


	<!--- function to get product name and price from db --->
	<cffunction
				name = "getAllProductsFromDb"
				access = "remote"
				returnType = "query">
				<cfargument
						name = "categoryId"
						default=1
						type = "numeric">
				<cfquery
						name = "getProductDetails">
						SELECT ProductName, Price
						FROM Product
						WHERE CategoryId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.categoryId#">
				</cfquery>

	<cfreturn getProductDetails />
	</cffunction>

	<!--- function to check data from db after login and set login variables --->
		<cffunction access="remote" name = "checkLoginFromDb" returntype = "any">
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
			</cffunction>
</cfcomponent>