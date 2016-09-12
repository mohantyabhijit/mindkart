/*
=========================================================================
FILE NAME : address.js
FILE TYPE : JAVASCRIPT FILE
PURPOSE : ADDS JS FUNCTIONALITY FOR SAVING DELIVERY ADDRESS
DATE CREATED : 07/09/2016
TIME CREATED : 4:18PM 
CREATED BY : Abhijit Mohanty
=========================================================================
*/

function addAddress(addressId)
	{
		$.ajax({
			  
		    url: "/mindkart/controllers/cart-action.cfc?method=addAddressToDb&addrId="+addressId
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