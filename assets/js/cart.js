/*
=========================================================================
FILE NAME : cart.js
FILE TYPE : JAVASCRIPT FILE
PURPOSE : ADDS JS FUNCTIONALITY FOR CART OPERATIONS
DATE CREATED : 29/08/2016
TIME CREATED : 5:11PM 
CREATED BY : Abhijit Mohanty
=========================================================================
*/

function addToCart(productId){
	
			/*				alert("working");*/
				
				
	$.ajax({
		  
		    url: "/mindkart/controllers/cart-action.cfc?method=addToCart&pId="+productId
		    , type: "get"
		    , dataType: "text"
		    
		    , success: function (data){
		    				
		    				$("#cartResult").html(data);
		    		}
		  
		  , error: function (xhr, textStatus, errorThrown){
		    
			  $("#cartResult").html(errorThrown);		
			 /* alert(errorThrown);*/
		  }
		});
				
	 		}
/*var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
	if (xhttp.readyState == 4 && xhttp.status == 200) {
		if (xhttp.responseText.search(/Success/) > 0) {
			document.getElementById("addToCartResult").innerHTML = xhttp.responseText;
		}
		else {
			alert(xhttp.responseText);
			window.location = "Login.cfm?errors=" + xhttp.responseText;
		}
	}
};
xhttp.open("get", "/mindkart/controllers/cart-action.cfc?method=addToCart&pId=productId", true);
xhttp.send();
*//*var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
        document.getElementById("addToCartResult").innerHTML = xhttp.responseText;
    }
};
xhttp.open("get", "/mindkart/controllers/cart-action.cfc?method=addToCart&productId=ProductId", true);
xhttp.send();
};*/