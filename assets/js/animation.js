
 

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


