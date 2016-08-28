/**
 * Ensures server side validation of Signup Form
 *
 * @author abhijitm
 * @date 8/23/16
 **/
component serverSideValidation
{
		//method to intialise error message
		public void function init()
		{
			Variables.errorMessage = "";

		}
		//method to check email
		public string function checkEmail()
		{
			if( REFind('^[a-z][\w\.]*@\w+(\.\w{2,3}){1,2}$', Form.email) EQ 0 )
			Variables.errorMessage = ListAppend(Variables.errorMessage, "Please enter a valid email address.", '/');



			if (  Form.email == "" )
				{
					Variables.errorMessage = "Email field cannot be blank";
				}



		}

		//method to validate password
		public string function checkPassword(inputtxt)
		{

			if ( Len(Form.pwd) == 0|| Form.pwd == "")
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"Password Field Cannot be blank.",",");
					//writedump("reached 1");abort;


				}
			if ( Len(Form.pwd) > 8 || len(Form.pwd) <5 )
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage,"Password must be 5-8 characters.",",");
					//writedump("reached 2");abort;


				}
			if (ReFind("^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{5,8}$",Form.pwd) EQ 0)
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage,"Use Alphanumeric Password with 1 uppercase ",",");
					//writedump("reached 3");abort;

				}
			else
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage,"adadasd",",");


				}



		}

		//method to check if both passwords are same or not
		public string function checkRetypePassword()
		{

			if ( Len(Form.repwd) EQ 0 || Form.repwd EQ "" )
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage,"Retype Password field cannot be blank");
				}

			else if (Form.repwd NEQ Form.pwd)
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage,"Passwords Do Not Match. Try Again.");

				}

			else  if ( Form.pwd EQ Form.repwd)
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage,"");

				}



		}

		//method to check name is only alphabets

		public string function checkFirstName()
		{
		   //first name should contain only alphabets


			if (REFind('^[a-zA-Z]+$', Form.fname) EQ 0)
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"Should Contain only Alphabets ",",");
				}
			else
			    {
			    	Variables.errorMessage = ListAppend (Variables.errorMessage,"" ,",");

			    }
			if ( Form.fname EQ "")
			   	{
			   		Variables.errorMessage = ListAppend (Variables.errorMessage," First Name field cannot be blank.",",");

			   	}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"");
				}

		}

		//method to check last name is only alphabets
		public string function checkLastName()
		{
		   //first name should contain only alphabets



			if ( Form.fname EQ " ")
			   	{
			   		Variables.errorMessage = ListAppend (Variables.errorMessage," Last Name field cannot be blank.",",");

			   	}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"");
				}
			if (REFind('^[a-zA-Z]+$', Form.lname) EQ 0)
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"Last Name should Contain only Alphabets ",",");
				}
			else
			    {
			    	Variables.errorMessage = ListAppend (Variables.errorMessage,"" ,",");

			    }

		}
		// method to check phone number is only digits
		public string function checkPhNo()
		{
			//phone number must be of 10 digits
			//phone number should not contain any alphabets
			var x = Form.phno;
			if (REFind ("^[0-9]{10}$",Form.phno) NEQ 0)
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"",",");
				}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"Phone Number should contain only numbers 0-9.(10 digits)",",");
				}

			if (  Form.phno == "")
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"Phone Number cannot be blank.",",");

				}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"",",");
				}


		}
		//method to check Address Line
		public string function checkAddress()
		{
			if (  Form.addr EQ "" )
			  	{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"Address field cannot be blank",",");
			  	}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"",",");
				}

		}
		//method to check Country
		public string function checkCountry()
		{
			if (  Form.country EQ "" )
			  	{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"Country field cannot be blank",",");
			  	}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"",",");
				}

		}
		//method to check State
		public string function checkState()
		{
			if (  Form.state EQ "" )
			  	{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"State field cannot be blank",",");
			  	}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"",",");
				}

		}
		//method to check city
		public string function checkCity()
		{
			if (  Form.city EQ "" )
			  	{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"City field cannot be blank",",");
			  	}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"",",");
				}

		}



		//method to check PIN
		public string function checkPin()
		{


			if (REFind("^[0-9]{6}$",Form.pin) EQ 0  )
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage,"PIN Code should contain only numbers 0-9.(6 digits)",",");
				}
			else
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage, " ",",");
				}
			if ( Form.pin == "")
				{
					Variables.errorMessage = ListAppend (Variables.errorMessage, " PIN field cannot be blank. ",",");
				}


		}



		//method to check date of birth field
		public string function checkDob()
		{
			if( Len(Form.dob) NEQ 10 OR Mid(Form.doB, 3, 1) NEQ '/' OR Mid(Form.doB, 6, 1) NEQ '/' )
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage, "Please enter the date in the specified format only.", ',');
				}
			if (REFind ("\d",Form.dob) EQ 0)
				{
					Variables.errorMessage = ListAppend(Variables.errorMessage, "Please enter date using digits only", ',');
				}
			if ( Form.dob  EQ "" )
			   	{
					Variables.errorMessage = ListAppend(Variables.errorMessage, "Date of Birth field cannot be blank", ',');
			   	}
			else
			  	{
					Variables.errorMessage = ListAppend(Variables.errorMessage, "", ',');
			  	}


		}


			public string function showErrors()
			{
				session.showErrors = "";
				session.showErrors = Variables.errorMessage;
			}


}





