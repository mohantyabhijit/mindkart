<!---
===============================================================
FILE NAME : signup.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW A REGISTRATION FORM
DATE CREATED : 22/08/2016
TIME CREATED : 8:11PM
CREATED BY : Abhijit Mohanty
================================================================
 --->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script type = "text/javascript"  src = "/mindkart/assets/js/jquery-2.1.3.min.js"></script>
		<script type = "text/javascript"  src = "/mindkart/assets/js/validation.js"></script>
		<script type = "text/javascript"  src = "/mindkart/assets/js/animation.js"></script>
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anymous">
		<link rel="stylesheet" type="text/css" href = "/mindkart/assets/css/bootstrap.min.css">
		<link rel="stylesheet" type = "text/css" href = "/mindkart/assets/css/page-stylesheet.css">
		<link rel="stylesheet" type= "text/css" href="/mindkart/assets/css/signup-stylesheet.css">
		<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<title>
			Sign Up with us
		</title>
	</head>
		<body>
			<cfinclude template = "/mindkart/views/layout/header.cfm">
			<cfinclude template = "/mindkart/views/layout/navbar.cfm">
			<cfparam name = "URL.Response" default="">

			<h1>Come Onboard</h1>
			<div id = div-error>
			<!--- <button id="errorButton" class = "btn btn-danger" onclick = "errorData()" name = "errorShow" >Errors</button> --->
			 	<cfif URL.Response EQ "Errors">
				<span id = "showResult">
					<cfloop index="error" list="#session.showErrors#" delimiters=','>
						<cfoutput>#error#</cfoutput> <br />
					</cfloop>
				</span>
				<cfelse>
				<p></p>
				</cfif>
			</div>


			<form name="myForm"   class = "form-inline" method="post" action="/mindkart/controllers/signup-action.cfm" >
				</br></br>

				<div class="form-group" id = "div-email">
				  <input type="text" name = "email" class="form-control" id="email" onblur = "checkEmail()" placeholder = "Enter E-Mail Id" maxlength = "50" autofocus>
				  <span id = "span-email"></span>
			    </div>
				  </br></br>
			    <div class="form-group" id = "div-pwd">
				    <input type = "password" class="form-control"name ="pwd" id="pwd" onblur = "checkPassword(document.myForm.pwd)" maxlength = "8" placeholder = "Enter Password" >
				    <span id = "span-pwd"></span>
				  </div>
				  </br></br>
				  <div class="form-group" id = "div-repwd">
				    <input type = "password" class="form-control" name = "repwd" id="repwd" onblur = "checkRetypePassword()" maxlength = "8" placeholder = "Retype Password"id="repwd" = "">
				    <span id = "span-repwd"></span>
				  </div>
				</br></br>
				<div class="form-group" id = "div-fname">
					<input type="text" class="form-control" name = "fname" id="fname" placeholder="Enter First Name" maxlength = "20" onblur = "checkFirstName(document.myForm.fname)"= "" >
					<span id = "span-fname"></span>
				</div>
				</br></br>
				</div>
				<div class="form-group" id = "div-lname">
				    <input type="text" class="form-control" name = "lname" id="lname" placeholder="Enter Last Name" maxlength = "20" onblur = "checkLastName(document.myForm.lname)" = "">
				    <span id = "span-lname"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-phno">
				    <input type="text" class="form-control" name = "phno" id="phno" placeholder="Enter Phone Number" maxlength = "10" onblur = "checkPh()" = "" >
				    <span id = "span-phno"></span>
				</div>
				</div>
				</br></br>
				<div class="form-group" id="div-submit">
				    <div class="col-lg-12">
				      <button type="reset" class="btn btn-danger" >Reset</button>
				      <button type="submit" class="btn btn-success" >Submit</button>
				    </div>
				</div>
				</form>

 				<cfinclude template="/mindkart/views/layout/footer.cfm">
		</body>
</html>