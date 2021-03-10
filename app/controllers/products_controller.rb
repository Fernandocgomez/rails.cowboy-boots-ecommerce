class ProductsController < ApplicationController
    
    ###
    # @description: Write doc.
    # @param {any}: 
    # @return {any}: 
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
    # @description: Write doc.
    # @param {any}: 
    # @return {any}: 
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
