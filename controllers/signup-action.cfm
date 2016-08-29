<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "../assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "../assets/css/page-stylesheet.css">
	</head>
		<body>
			<cfscript>
				initCall = request.signupValidation.init();
				emailCall = request.signupValidation.checkEmail();
				passwordCall = request.signupValidation.checkPassword();
				retypePasswordCall = request.signupValidation.checkRetypePassword();
				fnameCall = request.signupValidation.checkFirstName();
				lnameCall = request.signupValidation.checkLastName();
				phnoCall = request.signupValidation.checkPhNo();
				dobCall = request.signupValidation.checkDob();
				errorShowCall = request.signupValidation.showErrors();
				dbInsertDataCall = request.dbOperation.insertIntoDb();
				session.loggedin = true;

		    </cfscript>
		    <cflocation url = "/mindkart/index.cfm">


		</body>
</html>













