<!DOCTYPE html>
<html>
	<head>
			<meta charset="utf-8">
	  		<meta name="viewport" content="width=device-width, initial-scale=1">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
			<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
			<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
			<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
  			<link rel="icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
			<cfif #URL.CategoryId# EQ 1>
			<title>
				Mobiles
			</title>
			<cfelseif #URL.CategoryId# EQ 2>
			<title>
				Televisions
			</title>
			<cfelseif #URL.CategoryId# EQ 3>
			<title>
				Laptops
			</title>
			</cfif>
	</head>
		<body>
				<cfinclude template="/mindkart/views/layout/header.cfm">
				<cfinclude template="/mindkart/views/layout/navbar.cfm">
				<cfset arguments.catId = #URL.CategoryId#>
				</br></br>
				<cfif arguments.catId EQ 1>
					<div class="container">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-primary">
					        <div class="panel-heading">
						        <cfscript>
						        productNameCall = request.dbOperation.showProductName(20);
						        </cfscript>
							</div>
					        <div class="panel-body">
								</br>
								<cfscript>
								productCall = request.dbOperation.showImageDetails(20);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=20">Buy Now !!</a></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">
						         <cfscript>
						        productNameCall = request.dbOperation.showProductName(22);
						        </cfscript>
							</div>
					        <div class="panel-body"  >
								<cfscript>
								productCall = request.dbOperation.showImageDetails(22);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=22">Buy Now !!</a></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-success">
					        <div class="panel-heading">
						         <cfscript>
						        productNameCall = request.dbOperation.showProductName(25);
						        </cfscript>
							</div>
					        <div class="panel-body">
								<cfscript>
								productCall = request.dbOperation.showImageDetails(25);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=25">Buy Now !!</a></div>
					      </div>
					    </div>
					  </div>
					</div><br>
					<cfelseif arguments.catId EQ 2>
					<div class="container">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-primary">
					        <div class="panel-heading">
						         <cfscript>
						        productNameCall = request.dbOperation.showProductName(33);
						        </cfscript>
							</div>
					        <div class="panel-body">
								</br>
								<cfscript>
								productCall = request.dbOperation.showImageDetails(33);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=33">Buy Now !!</a></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">
						         <cfscript>
						        productNameCall = request.dbOperation.showProductName(36);
						        </cfscript>
							</div>
					        <div class="panel-body"  >
								<cfscript>
								productCall = request.dbOperation.showImageDetails(36);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=36">Buy Now !!</a></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-success">
					        <div class="panel-heading">
						        <cfscript>
						        productNameCall = request.dbOperation.showProductName(37);
						        </cfscript>
							</div>
					        <div class="panel-body">
								<cfscript>
								productCall = request.dbOperation.showImageDetails(37);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=37">Buy Now !!</a></div>
					      </div>
					    </div>
					  </div>
					</div><br>
					<cfelseif arguments.catId EQ 3>
					<div class="container">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-primary">
					        <div class="panel-heading">
						         <cfscript>
						        productNameCall = request.dbOperation.showProductName(38);
						        </cfscript>
							</div>
					        <div class="panel-body">
								</br>
								<cfscript>
								productCall = request.dbOperation.showImageDetails(38);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=38">Buy Now !!</a></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">
						         <cfscript>
						        productNameCall = request.dbOperation.showProductName(39);
						        </cfscript>
							</div>
					        <div class="panel-body"  >
								<cfscript>
								productCall = request.dbOperation.showImageDetails(39);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=39">Buy Now !!</a></div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-success">
					        <div class="panel-heading">
						         <cfscript>
						        productNameCall = request.dbOperation.showProductName(40);
						        </cfscript>
						    </div>
					        <div class="panel-body">
								<cfscript>
								productCall = request.dbOperation.showImageDetails(40);
								</cfscript>
							</div>
					        <div class="panel-footer"><a href = "/mindkart/views/utility/product-detail.cfm?ProductId=40">Buy Now !!</a></div>
					      </div>
					    </div>
					  </div>
					</div><br>
					</cfif>

				<cfinclude template="/mindkart/views/layout/footer.cfm">

		</body>
</html>













