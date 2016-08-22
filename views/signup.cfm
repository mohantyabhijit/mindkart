<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script type = "text/javascript"  src = "../assets/js/jquery-2.1.3.min.js"></script>
		<script type = "text/javascript"  src = "../assets/js/validation.js"></script>
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href = "../assets/css/bootstrap.min.css">
		<link rel="stylesheet" type = "text/css" href = "../assets/css/page-stylesheet.css">
		<link rel="stylesheet" type= "text/css" href="../assets/css/signup-stylesheet.css">
		<title>
			Register with us
		</title>
	</head>
		<body>
			<div class="jumbotron">
  					<div class="container text-center">
   						<h1>MindKart Online Store</h1>
    					<p>Registration Page</p>
				    </div>
			</div>
			<cfinclude template = "navbar.cfm">
			<h1>Create Account</h1>
			<form name="myForm" class = "form-inline" >
				</br></br>

				<div class="form-group" id = "div-email">
				  <input type="email" class="form-control" id="email"  onblur = "checkEmail()" placeholder = "Enter E-Mail Id" maxlength = "20" required="yes">
				  <span id = "span-email"></span>
			    </div>
				  </br></br>
			    <div class="form-group" id = "div-pwd">
				    <input type="password" class="form-control" id="pwd" onblur = "checkPassword(document.myForm.pwd)" maxlength = "8" placeholder = "Enter Password" required="yes">
				    <span id = "span-pwd"></span>
				  </div>
				  </br></br>
				  <div class="form-group" id = "div-repwd">
				    <input type="password" class="form-control" id="repwd" onblur = "checkRetypePassword()" maxlength = "8" placeholder = "Retype Password"id="repwd" required = "yes">
				    <span id = "span-repwd"></span>
				  </div>
				</br></br>
				<div class="form-group" id = "div-fname">
					<input type="text" class="form-control" id="fname" placeholder="Enter First Name" maxlength = "20" onblur = "checkFirstName(document.myForm.fname)"required = "yes" >
					<span id = "span-fname"></span>
				</div>
				</br></br>
				</div>
				<div class="form-group" id = "div-lname">
				    <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" maxlength = "20" onblur = "checkLastName(document.myForm.lname)" required = "yes">
				    <span id = "span-lname"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-phno">
				    <input type="text" class="form-control" id="phno" placeholder="Enter Phone Number" maxlength = "10" onblur = "checkPhNo()" required = "yes" >
				    <span id = "span-phno"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-addr">
				    <input type="text" class="form-control" id="addr" placeholder="Enter Address" onblur = "checkAddress()" required = "yes" >
				    <span id = "span-addr"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-country">
				    <input type="text" class="form-control" id="country" placeholder="Enter Country" maxlength = "15" onblur = "checkCountry()" required = "yes" >
				    <span id = "span-country"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-state">
				    <input type="text" class="form-control" id="state" placeholder="Enter State" maxlength = "20" onblur = "checkState()" required = "yes" >
				    <span id = "span-state"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-city">
				    <input type="text" class="form-control" id="city" placeholder="Enter City" maxlength = "30" onblur = "checkCity()" required = "yes" >
				    <span id = "span-city"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-dob">
				    <input type="date" class="form-control" id="dob" placeholder="Birth Date dd/mm/yyyy" onblur = "checkDOB()" required = "yes" >
				    <span id = "span-dob"></span>
				</div>
				</br></br>
				<div class="form-group" id = "div-pin">
				    <input type="text" class="form-control" id="pin" placeholder="Enter PIN Code"  maxlength = "6" onblur = "checkPin()" required = "yes" >
				    <span id = "span-pin"></span>
				</div>
				</br></br>
				<div class="form-group" id="div-submit">
				    <div class="col-lg-12">
				      <button type="submit" class="btn btn-primary" onclick = "checkAll()" >Submit</button>
				    </div>
				</div>
				</form>

 				<cfinclude template="footer.cfm">
		</body>
</html>