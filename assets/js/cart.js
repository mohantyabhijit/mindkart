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
//function to implement Ajax calls for Add to Cart functionality
function addToCart(productId){			
				
	$.ajax({
		  
		    url: "/mindkart/controllers/cart-action.cfc?method=addToCart&pId="+productId
		    , type: "get"
		    , dataType: "text"
		    
		    , success: function (data){
		    				
		    				$("#cartResult").html(data);
		    				window.location.reload();
		    		}
		  
		  , error: function (xhr, textStatus, errorThrown){
		    
			  $("#cartResult").html(errorThrown);		
			 
		  }
		});
				
}

function increaseQuantity(){
	alert("Quantity Increased");
	$.ajax({
		  
	    url: "/mindkart/controllers/cart-action.cfc?method=quantityIncrease&pId="+productId
	    , type: "get"
	    , dataType: "text"
	    
	    , success: function (data){
	    				
	    				$("#cartResult").html(data);
	    				window.location.reload();
	    		}
	  
	  , error: function (xhr, textStatus, errorThrown){
	    
		  $("#cartResult").html(errorThrown);		
		 
	  }
	});

}

function decreaseQuantity(){
	alert("Quantity Decreased");
}