/**
 * Implements the methods needed for Cart
 *
 * @author abhijitm
 * @date 8/29/16
 **/
component output=false persistent=false cartAction{
	remote string function addToCart (pId)
		{
				session.pid = pId;
				session.pid = StructNew();
				session.pid.id = pId;
				session.pid.name = request.dbOperation.getProductName(pId);
				session.pid.make = request.dbOperation.getProductMake(pId);
				session.pid.model = request.dbOperation.getProductModel(pId);
				session.pid.qty = 1;
				session.pid.price = request.dbOperation.getProductPrice(pId);
				ArrayAppend(session.cartInfo,"#session.pid#");
				return "Add to Cart Successful";
		}
}