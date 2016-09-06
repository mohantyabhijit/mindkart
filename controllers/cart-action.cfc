/**
 * Implements the methods needed for Cart
 *
 * @author abhijitm
 * @date 8/29/16
 **/
component output=false persistent=false cartAction{
	remote string function addToCart (pId)
		{

				variables.productDetails = request.dbOperation.getProductDetails(pId);
				session.cartItem = StructNew();
				session.cartItem.id = pId;
				session.cartItem.name = #variables.productDetails.ProductName#;
				session.cartItem.make = #variables.productDetails.Make#;
				session.cartItem.model =#variables.productDetails.Model#;
				session.cartItem.qty = 1;
				session.cartItem.price = #variables.productDetails.Price#;
				ArrayAppend(session.cartInfo,"#session.cartItem#");
				return "Add to Cart Successful";
		}

}