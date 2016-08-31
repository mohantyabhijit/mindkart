/**

 * Gets all product details of appropriate CategoryId
 *
 * @author abhijit mohanty
 * @date 8/26/16
 **/
component accessors=true output=false persistent=false {
dbGetDataCall = request.dbOperation.getAllProductsFromDb();

}