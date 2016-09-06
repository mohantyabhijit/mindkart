<!---
===============================================================
FILE NAME : address.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO ADD ADDRESSES
DATE CREATED : 05/09/2016
TIME CREATED : 11:35AM
CREATED BY : Abhijit Mohanty
================================================================
 --->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BvYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
		<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<title>
			Address
		</title>
	</head>
		<body>
		<cfinclude template = "/mindkart/views/layout/header.cfm">
		<cfinclude template = "/mindkart/views/layout/navbar.cfm">
		<cfif IsDefined( "session.userId" ) >
			<cfset variables.addresses = request.dbOperation.getAddressFromDb(#session.userId#)>
		<cfelse>
			<cflocation url="/mindkart/views/login.cfm" addToken="no">
		</cfif>
			<cfloop index = "addressLoop" from = "1" to = "#variables.addresses.RecordCount#"  >

					<cfoutput>
					<div class="col-sm-4">
					    <div class="panel panel-danger">
						<form name="addressForm" class="form-inline">

							<div class="form-group" id = "div-house">
								<br>
								<label> House No. : </label>
							    	<input type="text" class="form-control"  value = "#variables.addresses.HomeAddress[addressLoop]#" readonly>
								<span id = "span-house"></span>
							</div>
							</br></br>
							<div class="form-group" id = "div-pin">
								<label> PIN Code : </label>
							    	<input type="text" class="form-control"   value = "#variables.addresses.Zip[addressLoop]#" readonly>
								<span id = "span-pin"></span>
							</div>
							</br></br>
							<div class="form-group" id = "div-city">
								<label> City : </label>
							    	<input type="text" class="form-control"   value = "#variables.addresses.City[addressLoop]#" readonly >
								<span id = "span-city"></span>
							</div>
							</br></br>
							<div class="form-group" id = "div-state">
								<label> State : </label>
							    	<input type="text" class="form-control"   value = "#variables.addresses.State[addressLoop]#" readonly >
								<span id = "span-state"></span>
							</div>
							</br></br>
							<div class="form-group" id = "div-country">
								<label> Country : </label>
							    	<input type="text" class="form-control"   value = "#variables.addresses.Country[addressLoop]#" readonly>
								<span id = "span-country"></span>
							</div>
							<br><br>
							<div class="panel-footer">
								<button class="btn btn-success"><span class="glyphicon glyphicon-inbox" aria-hidden="true"> </span> Deliver here</button>
					        </div>
						</div>
					</div>

					</form>
					<!--- </div> --->
					</cfoutput>



			</cfloop>
			<h4 id = "addAddress">&nbsp To add new address go &#8595</h4>
<!--- 		<h4 align = "center"><u>Enter a delivery address</u></h4> --->
		<br class = "clearFloat">
		<div class="col-sm-4 col-sm-offset-4">
		  <div class="panel panel-danger">
			<form name="addressForm" class="form-inline" method = "post" action = "/mindkart/controllers/checkout-action.cfm">
					 <div class="panel-heading">
						 <h4>Enter a new delivery address</h4>
						 <hr>
					 </div>

					<br>
					<div class="form-group" id = "div-house">
						<label> House No. : </label>
					    	<input type="text" class="form-control" name="home" id="home"  onblur = "checkEmail()" placeholder = "54, Abc Road" autofocus>
						<span id = "span-house"></span>
					</div>
					</br></br>
					<div class="form-group" id = "div-pin">
						<label> PIN Code : </label>
					    	<input type="text" class="form-control" name="pin" id="pin"  onblur = "checkPin()" placeholder = "751019" maxlength = "6">
						<span id = "span-pin"></span>
					</div>
					</br></br>
					<div class="form-group" id = "div-city">
						<label> City : </label>
					    	<input type="text" class="form-control" name="city" id="city"  onblur = "checkCity()" placeholder = "Bhubaneswar" >
						<span id = "span-city"></span>
					</div>
					</br></br>
					<div class="form-group" id = "div-state">
						<label> State : </label>
					    	<input type="text" class="form-control" name="state" id="state"  onblur = "checkState()" placeholder = "Odisha" >
						<span id = "span-state"></span>
					</div>
					</br></br>
					<div class="form-group" id = "div-country">
						<label> Country : </label>
					    	<input type="text" class="form-control" name="country" id="country"  onblur = "checkCountry()" placeholder = "India" >
						<span id = "span-country"></span>
					</div>
					</br></br>
					<div class="form-group" id="div-submit">
					     <div class="panel-footer">
						     <button type="submit"  class = "btn btn-info col-lg-offset-2"><span class = "glyphicon glyphicon-plus"></span> Add address and continue</button>
					     </div>
					</div>
					<br>
				</div>
			</div>
			</form>


		</div>
		</div>

		<br><br><br><br><br><br><br><br><br>
		<cfinclude template = "/mindkart/views/layout/footer.cfm">


		</body>
</html>
<!---
<div class="col-sm-4">
					      <div class="panel panel-danger">
					        <div class="panel-heading">
					        </div>
					        <div class="panel-body"  >
					        </div>
					        <div class="panel-footer">
					        </div>
					        </div>
						</div>
					         --->