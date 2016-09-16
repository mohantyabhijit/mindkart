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
			session.productId = pId;
			session.cartItem.name = #variables.productDetails.ProductName#;
			session.cartItem.make = #variables.productDetails.Make#;
			session.cartItem.model = #variables.productDetails.Model#;
			session.cartItem.qty = 1;
			session.cartItem.price = #variables.productDetails.Price#;
			ArrayAppend(session.productArray,"#session.productId#");
			ArrayAppend(session.cartInfo,"#session.cartItem#");
			session.cartLength = session.cartLength + 1;
			return "Add to Cart Successful";
		}

	remote string function addAddressToDb()
		{
			variables.addAddressCall = request.dbOperation.insertUserAddressToDb(addrId);
			if (variables.addAddressCall == true)
				{
					session.userOrderId = request.dbOperation.getUserOrderId();
					return "Address stored in DB";
				}
			else
				{
					return "Address Could Not be stored";
				}


		}
	remote string function addProductsToDb(uId)
		{

			for (index = 1 ; index <= ArrayLen (session.productArray); index++ )
			{
				request.dbOperation.pushProductsToDb(session.userOrderId, session.productArray[index], 1);
			}
		}
	remote string function increaseQty()
		{

		}
}