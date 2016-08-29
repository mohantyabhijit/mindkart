function addToCart(ProductId)
	 {
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (xhttp.readyState == 4 && xhttp.status == 200) {
					if (xhttp.responseText.search(/Success/) > 0) {
						location.reload();
					}
					else {
						/*alert(xhttp.responseText);*/
						window.location = "/mindkart/views/login.cfm?errors=" + xhttp.responseText;
					}
				}
			};
			xhttp.open("GET", "/mindkart/controllers/cart-action.cfc?method=addToCart&productId="+ProductId, true);
			xhttp.send();
		}

	