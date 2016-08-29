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

		</cffunction>
<!--- function to show the image of a product from DB using Product Id --->
	<cffunction
				name = "showImageDetails"
				access = "remote">
				<cfargument
							name = "productId"
							default = ""
							type = "numeric">
				<cfquery
								name = "showImageFromDb"
								dataSource = "mindkart">
								SELECT ProductName, Make, Model, ImagePath,ProductDescription
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
						<u>Product Description </u>:- <br />#showProductFromDb.ProductDescription# <br /><br />
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
</cfcomponent>