class ProductsController < ApplicationController
    
    ###
    # @description: Retrieve a product from data base based on the ID provided.
    # @return {JSON}: Product instance on JSON format.
    ###
    def show
        product = Product.find_by_id(params[:id])
        if(product)
            render json: { "res" => product }, status: 200
        else
            render json: { "res" => "not found" }, status: 404
        end
    end

    ###
    # @description: Get all the product by spesific collection based on the collection ID.
    # @return {JSON}: Array of Product instance on JSON format.
    ###
    def get_products_by_collection
        collection = Collection.find_by_id(params[:collection_id])
        if(collection)
            products = collection.products
            render json: { "res" => products }, status: 200
        else
            render json: { "res" => "not found" }, status: 404
        end
    end

end
