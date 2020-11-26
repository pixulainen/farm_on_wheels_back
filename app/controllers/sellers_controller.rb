class SellersController < ApplicationController

    def create
        seller = Seller.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password])
        if seller.save
            render json: {username: seller.username, token: generate_token(id: seller.id)}
           else
             puts "failed"
            render json: seller.errors, status: :unprocessable_entity
          end
    end
    def show
        seller = Seller.find_by(id: params[:id])
        render json: seller, serializer: SellerSerializer, include: "*.*"

    end
    def index
        sellers = Seller.all 
        render json: sellers, each_serializer: SellerSerializer, include: "*.*"	
    end

end
