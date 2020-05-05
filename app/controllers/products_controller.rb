class ProductsController < ApplicationController
    def search
        parameter = params['query'].downcase
        products = Product.all
        results = products.filter { |product | product.name.downcase.start_with?(parameter)}
        if results
        render json: results
        else
            render json: { error: "error"}
        end
    end

    def index
        products = Product.all
        render json: products, each_serializer: ProductSerializer, include: "*"	
    end
end
