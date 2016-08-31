<!---
===============================================================
FILE NAME : login.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW A LOGIN PAGE
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
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
		<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<link rel="icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<script type = "text/javascript"  src = "/mindkart/assets/js/jquery-2.1.3.min.js"></script>
		<script type = "text/javascript"  src = "/mindkart/assets/js/validation.js"></script>
		<title>
			Log In
		</title>
	</head>
		<body>
				<cfinclude template = "/mindkart/views/layout/header.cfm">
				<cfinclude template = "/mindkart/views/layout/navbar.cfm">

				<form name = "myForm" class = "form-inline" method = "post" action = "/mindkart/controllers/login-action.cfm" >
					</br></br>

				  <div class="form-group" id = "div-email">
					 <label> Enter Email Id: </label>
				    <input type="email" class="form-control" name="email" id="email"  onblur = "checkEmail()" placeholder = "Enter E-Mail Id" autofocus>
				    <span id = "span-email"></span>
				  </div>
				  </br></br>


				  <div class="form-group" id = "div-pwd">
					  <label> Enter Password: </label>
				    <input type="password" class="form-control" name = "pwd" id="pwd"  onblur = "checkPassword(document.myForm.pwd)" placeholder = "Enter Password">
				    <span id = "span-pwd"></span>
				  </div>
				  </br></br>


				  <div class="form-group" id="div-submit">
				    <div class="col-lg-12">
				      <a href="/mindkart/views/signup.cfm" class="btn btn-warning" role="button">Register</a>
				    </div>
				  </div>

				  <div class="form-group" id="div-submit">
				    <div class="col-lg-12">
				      <button type="submit"  class = "btn btn-success">Login</button>
				    </div>
				  </div>
					<span >If you do not have an account please register with us</span>
				 </form>

				</br></br></br></br></br></br></br></br></br></br></br>
				<cfinclude template = "/mindkart/views/layout/footer.cfm">
		</body>
</html>