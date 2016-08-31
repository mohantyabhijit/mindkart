<!---
===============================================================
FILE NAME : signup-action.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CODE TO CALL ALL SIGNUP METHODS
DATE CREATED : 23/08/2016
TIME CREATED : 11:25PM
CREATED BY : Abhijit Mohanty
================================================================
 --->
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










