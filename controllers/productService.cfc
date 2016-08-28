/**
 * categoryService
 *
 * @author abhijitm
 * @date 8/26/16
 **/
component accessors=true output=false persistent=false {
remote any function getProductByCategoryId(CategoryId){
	categoryDetailCall = request.dbOperation.getAllProductsFromDb(CategoryId);
    categoryDetailJson = SerializeJSON(categoryDetailCall);
    return categoryDetailJson;
}
}

