/*
=========================================================================
FILE NAME : side-menu.js
FILE TYPE : JAVASCRIPT FILE
PURPOSE : ADDS JS FUNCTIONALITY FOR SIDE MENU FOR CATEGORIES
DATE CREATED : 22/08/2016
TIME CREATED : 8:11PM 
CREATED BY : Abhijit Mohanty
=========================================================================
*/

/* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */
function openNav() {
    document.getElementById("mySidenav").style.width = "150px";
    document.getElementById("main").style.marginLeft = "150px";
    document.body.style.backgroundColor = "blue";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
    document.body.style.backgroundColor = "blue";
}

/*Do jQuery.Ajax call to receive contents of products page according to Category*/
function getCategoryProduct(CategoryId)
{
	$.ajax({
		  // the location of the CFC to run
		    url: "/mindkart/controllers/productService.cfc?method=getProductByCategoryId&ReturnFormat=json"
		  // send a GET HTTP operation
		  , type: "get"
		  // tell jQuery we're getting JSON back
		  , dataType: "json"
		  // send the data to the CFC
		  , data: {
		    
		    // send the ID entered by the user
		    CategoryId: CategoryId
		  }
		  // this gets the data returned on success
		  , success: function (data){
		    // this uses the "jquery.field.min.js" library to easily populate your form with the data from the server
			  console.log(data);
			  
		    
		  }
		  // this runs if an error
		  , error: function (xhr, textStatus, errorThrown){
		    // show error
		    
		  }
		});
	
}
