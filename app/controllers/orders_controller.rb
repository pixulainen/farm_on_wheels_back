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
        order = Order.create(seller_id: params[:seller], buyer_id: get_buyer.id,total: params[:total])
        # for each product create a order_product
        products = params[:products]
        products.each do |product|
            quantity = product["stock"]
            stock_product = Product.find(product["id"])
            # if stock_product.stock - quantity > 0

            stock_product.update(stock: stock_product.stock - quantity)
            # byebug
            OrderProduct.create(order_id: order.id, product_id: product["id"],quantity:quantity)
        end

        render json: order
    end
end
