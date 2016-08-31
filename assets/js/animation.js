/*
=========================================================================
FILE NAME : animation.js
FILE TYPE : JAVASCRIPT FILE
PURPOSE : AJAX CALL TO SHOW SERVER SIDE ERRORS
DATE CREATED : 24/08/2016
TIME CREATED : 1:11PM 
CREATED BY : Abhijit Mohanty
=========================================================================
*/

 

function errorData()
{
	
	  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
			  	
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("showResult").innerHTML = xhttp.responseText;
		    }
		  };
		  xhttp.open("GET", "../views/errorsView.cfm", true);
		  xhttp.send();
		 alert("You Have some Form Errors!!");
		
}


