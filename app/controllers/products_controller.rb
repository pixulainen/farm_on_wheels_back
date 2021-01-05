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
        search_param = params[:starts_with].downcase
        products = Product.where(nil)

        products = products.filter_by_category(params[:category]) if params[:category].present?
        products = products.filter { |product | product.name.downcase.start_with?(search_param)}

        if products
            render json: products.first(12), each_serializer: ProductSerializer, include: "*.*"	
            else
                render json: { error: "error"}
            end
    end
end
