
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










