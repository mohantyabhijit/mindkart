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
					request.signupValidation.init();
					request.signupValidation.checkEmail();
					request.signupValidation.checkPassword();
					request.signupValidation.checkRetypePassword();
					request.signupValidation.checkFirstName();
					request.signupValidation.checkLastName();
					request.signupValidation.checkPhNo();

					variables.errorShowCall = request.signupValidation.showErrors();

					if (#variables.errorShowCall# == "errors")
						{
							location (url = "/mindkart/views/signup.cfm?Response=Errors" , addToken = "no" );
						}
					else if (errorShowCall == "success")
						{
							session.loggedin = true;
							sessionRotate();
							session.name = "#Form.fname#";
							dbInsertDataCall = request.dbOperation.insertIntoDb();
							location (url = "/mindkart/index.cfm" , addToken = "no" );
						}
				</cfscript>
>











