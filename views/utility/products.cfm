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
					        <div class="panel-heading">Galaxy J5 16GB</div>
					        <div class="panel-body">
								</br>
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(20);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">Galaxy On7 8GB</div>
					        <div class="panel-body"  >
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(22);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-success">
					        <div class="panel-heading">Galaxy J7 16GB</div>
					        <div class="panel-body">
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(25);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					  </div>
					</div><br>
					<cfelseif arguments.catId EQ 2>
					<div class="container">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-primary">
					        <div class="panel-heading">Vu  Full HD LED TV</div>
					        <div class="panel-body">
								</br>
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(33);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">Vu 32 INCH FULL HD LED TV</div>
					        <div class="panel-body"  >
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(36);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-success">
					        <div class="panel-heading">Sony 32 INCH FULL HD LED TV</div>
					        <div class="panel-body">
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(37);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					  </div>
					</div><br>
					<cfelseif arguments.catId EQ 3>
					<div class="container">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-primary">
					        <div class="panel-heading">Lenovo IdeaPad 300 Intel Core i7 (6th Gen)</div>
					        <div class="panel-body">
								</br>
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(38);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">Lenovo Yoga 500 Core i7</div>
					        <div class="panel-body"  >
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(39);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					    <div class="col-sm-4">
					      <div class="panel panel-success">
					        <div class="panel-heading">Lenovo Ideapad 100 APU Quad Core A6 </div>
					        <div class="panel-body">
								<cfscript>
								productCall = request.dbOperation.showProductDetailsIndex(40);
								</cfscript>
							</div>
					        <div class="panel-footer">Buy Now !!</div>
					      </div>
					    </div>
					  </div>
					</div><br>
					</cfif>

				<cfinclude template="/mindkart/views/layout/footer.cfm">

		</body>
</html>













