/*
=========================================================================
FILE NAME : order.js
FILE TYPE : JAVASCRIPT FILE
PURPOSE : ADDS JS FUNCTIONALITY FOR ORDER ADDITION/VIEW
DATE CREATED : 12/09/2016
TIME CREATED : 11:54AM 
CREATED BY : Abhijit Mohanty
=========================================================================
*/

//function to put order details into DB
function pushCartToDb(userOrderId){			
				
	$.ajax({
		  
		    url: "/mindkart/controllers/cart-action.cfc?method=addProductsToDb&uId="+userOrderId
		    , type: "get"
		    , dataType: "text"
		    
		    , success: function (data){
		    			console.log(data);
		    		}
		  
		  , error: function (xhr, textStatus, errorThrown){
		      		console.log(errorThrown);		
			}
		});
	
}
