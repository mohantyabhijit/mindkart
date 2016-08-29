/**
 * Implements the methods needed for Cart
 *
 * @author abhijitm
 * @date 8/29/16
 **/
component accessors=true output=false persistent=false cartAction{
	remote function addToCart (string productId)
		{
			try
				{
					structInsert( Session.cart, Arguments.productId, 1 );
					return "Success";
				}
			catch( any exception )
				{
					return "";
				}
		}

}