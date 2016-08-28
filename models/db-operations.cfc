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
	<cffunction
				name = "showProductDetailsIndex"
				access = "remote">
				<cfargument
							name = "productId"
							default = ""
							type = "numeric">
				<cfquery
								name = "showIndexFromDb"
								dataSource = "mindkart">
								SELECT ProductName, Make, Model, ImagePath,ProductDescription
								FROM Product
								WHERE ProductId = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.productId#">
				</cfquery>
				<cfoutput query="showIndexFromDb">
					<img src = "#showIndexFromDb.ImagePath#" alt="productImage" class="img-responsive"  width = "100%">
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