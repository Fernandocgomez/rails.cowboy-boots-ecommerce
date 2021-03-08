class ProductsController < ApplicationController
    
    def show
        product = Product.find_by_id(params[:id])
        if(product)
            render json: { "res" => product }, status: 200
        else
            render json: { "res" => "Not found" }, status: 404
        end
    end

    def get_products_by_collection
        
    end
end
