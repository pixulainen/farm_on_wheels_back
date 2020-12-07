class OrdersController < ApplicationController
    
    def index
        orders = Order.all
        render json: orders
    end
    def show
        order = Order.find_by(id:params[:id])
        render json: order
    end
    def create
        order = Order.create(seller_id: params[:seller], buyer_id: get_buyer.id, total: params["total"])
        debugger
         create_payment(order.id)
            # for each product create a order_product
            products = params[:products]
            products.each do |product|
                OrderProduct.create(order_id: order.id, product_id: product["id"])
            render json: order
        end
    end
end
