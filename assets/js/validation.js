/*
=========================================================================
FILE NAME : validation.js
FILE TYPE : JAVASCRIPT FILE
PURPOSE : ADDS CLIENT SIDE VALIDATION FOR THE REGISTRATION PAGE FORM TAGS
DATE CREATED : 22/08/2016
TIME CREATED : 8:11PM 
CREATED BY : Abhijit Mohanty
=========================================================================
*/


//method to validate User Name



//method to validate password
function checkPassword(inputtxt)   
{   
	var passwordErrorMessage = "";
	var passwordValue = document.getElementById("pwd").value;
	var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,8}$/;
  	
	if (inputtxt.value.match(passwordRegex))   
		{   
			passwordErrorMessage = " ";  
		}  
	else 
		{   
			passwordErrorMessage ="Use Alphanumeric Password with 1 uppercase";				  
		}
	if ( passwordValue.length > 8 || passwordValue.length <5 )
		{
			passwordErrorMessage = "Password must be 5-8 characters."
		}
	if ( passwordValue == null || passwordValue == "")
		{
			passwordErrorMessage = "Password Field Cannot be blank.";
		}
		
		document.getElementById("span-pwd").innerHTML=passwordErrorMessage;
}  
		
//method to check if both passwords are same or not
function checkRetypePassword()
{
	var passwordValue = document.getElementById("pwd").value;
	var retypePasswordValue = document.getElementById("repwd").value;
	var retyePasswordErrorMessage = "";
	if ( retypePasswordValue == null || retypePasswordValue == "" )
		{
			var retyePasswordErrorMessage = "This field cannot be blank";
		}

	else if (passwordValue != retypePasswordValue)
		{
			var retyePasswordErrorMessage = "Passwords Do Not Match. Try Again.";
		}
		
	else  if ( passwordValue == retypePasswordValue)
		{
			var retyePasswordErrorMessage="";
		}
	
	
	document.getElementById("span-repwd").innerHTML=retyePasswordErrorMessage;
}

//method to check name is only alphabets

function checkFirstName(inputtxt)  
{  
   //first name should contain only alphabets
	var firstNameValue = document.getElementById("fname").value;
	var fNameRegex = /^[A-Za-z]+$/;  
	var fNameErrorMessage = "";
	if (inputtxt.value.match(fNameRegex))  
		{  
			fNameErrorMessage=" ";
		}  
	else  
	    {  
			fNameErrorMessage="Should Contain only Alphabets"; 
	    }  
	if ( firstNameValue == null || firstNameValue == "")
	   	{
	   		fNameErrorMessage = "This field cannot be blank.";
	   	}
	else 
		{
			fNameErrorMessage = " ";
		}	
		document.getElementById("span-fname").innerHTML=fNameErrorMessage;
}  

function checkFirstName(inputtxt)  
{  
   //last name should contain only alphabets
	var lastNameValue = document.getElementById("fname").value;
	var lNameRegex = /^[A-Za-z]+$/;  
	var lNameErrorMessage = "";
	if (inputtxt.value.match(lNameRegex))  
		{  
			lNameErrorMessage=" ";
		}  
	else  
	    {  
			lNameErrorMessage="Should Contain only Alphabets"; 
	    }  
	if ( lastNameValue == null || lastNameValue == "")
	   	{
	   		lNameErrorMessage = "This field cannot be blank.";
	   	}
	else 
		{
			lNameErrorMessage = " ";
		}	
		document.getElementById("span-lname").innerHTML=lNameErrorMessage;
}  
  
//method to check Address Line 1
function checkAddress()
{
	var addressValue = document.getElementById("addr").value;
	var addressErrorMessage = "";
	if ( addressValue == null || addressValue == "" )
	  	{
			addressErrorMessage = "This field cannot be blank";
	  	}
	else 
		{
			addressErrorMessage= " ";
		}
	document.getElementById("span-addr").innerHTML = addressErrorMessage;
}

//method to check Country field
function checkCountry()
{
	var countryValue = document.getElementById("country").value;
	var countryErrorMessage = "";
	if ( countryValue == null || countryValue == "" )
	   	{
			countryErrorMessage = "This field cannot be blank";
	   	}
	else 
		{
			countryErrorMessage = " ";
		}
	document.getElementById("span-country").innerHTML = countryErrorMessage;
}
//method to check City field
function checkCity()
{
	var cityValue = document.getElementById("city").value;
	var cityErrorMessage = "";
	if ( cityValue == null || cityValue == "" )
	   	{
			cityErrorMessage = "This field cannot be blank";
	   	}
	else 
		{
			cityErrorMessage = " ";
		}
	document.getElementById("span-city").innerHTML = cityErrorMessage;
}

//method to check State field
function checkState()
{
	var stateValue = document.getElementById("state").value;
	var stateErrorMessage = "";
	if ( stateValue == null || stateValue == "" )
	   	{
			stateErrorMessage = "This field cannot be blank";
	   	}
	else 
		{
			stateErrorMessage = " ";
		}
	document.getElementById("span-state").innerHTML = stateErrorMessage;
}

//method to check PIN
function checkPin()
{
	var pinValue = document.getElementById("pin").value;
	var pinErrorMessage = "";
	var checkPin = pinValue.search("^[0-9]{6}$");
	if ( pinValue == null || pinValue == "")
		{
			pinErrorMessage = "This field cannot be blank.";
		}
	else if (checkPin < 0)
		{
			pinErrorMessage = "Should contain only numbers 0-9.(6 digits)";
		}
	else if (checkPin>0)
		{
			pinErrorMessage =" ";
		}
	else 
		{
			pinErrorMessage = " ";
		}
	
	document.getElementById("span-pin").innerHTML = pinErrorMessage;
}
//method to check Email field
function checkEmail()
{
	
	var emailValue = document.getElementById("email").value;
	var atPosition = emailValue.indexOf("@");
	var dotPosition = emailValue.lastIndexOf(".");
	var emailErrorMessage = "";
	if (atPosition<1 || dotPosition < atPosition+2 || dotPosition+2 >= emailValue.length ) 
		{
			emailErrorMessage = "Not a valid e-mail address";
	    }
	else 
		{
			emailErrorMessage = " ";
		}
	var y = document.getElementById("email").value;
	if ( emailValue == null || emailValue == "" )
		{
			emailErrorMessage = "This field cannot be blank";
		}

	document.getElementById("span-email").innerHTML = emailErrorMessage;
}

// method to check phone number is only digits
function checkPhNo()
{
	//phone number must be of 10 digits
	//phone number should not contain any alphabets
	var phnoValue = document.getElementById("phno").value;
	var checkPhNo = phnoValue.search("^[0-9]{10}$");
	var phnoErrorMessage = "";
	if ( phnoValue == null || phnoValue == "")
		{
			phnoErrorMessage = " Phone number field cannot be blank.";
		}
	else if (checkPhNo < 0)
		{
			phnoErrorMessage = "Should contain only numbers 0-9.(10 digits)";
		}
	else if (checkPhNo>0)
		{
			phnoErrorMessage =" ";
		}
	else 
		{
			phnoErrorMessage = " ";
		}
	
	document.getElementById("span-phno").innerHTML = phnoErrorMessage;
}

function goBack()
	{
	    window.history.back();
	}

// method to check if all fields have been filled or not
function checkAll()
{
	checkUserName();
	checkPassword(document.myForm.pswrd);
	checkRetypePassword();
	checkFirstName(document.myForm.fname);
	checkLastName(document.myForm.lname);
	checkFirstName();
	checkLastName();
	checkAddress1();
	checkAddress2();
	checkCity();
	checkState();
	checkPin();
	checkEmail();
	checkCompany();
	checkPhNo();
	checkCountry();
	checkOccupation();
	checkDOB();
}
//method to do AJAX call and show server side validation
function checkErrors()
{
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("showErrors").innerHTML = xhttp.responseText;
		    }
	};
	xhttp.open ("GET", "../views/errorsView.cfm", true);
	xhttp.send();
}