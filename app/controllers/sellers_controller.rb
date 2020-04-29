class SellersController < ApplicationController
    def show
        seller = Seller.find_by(id: params[:id])
        render json: seller, serializer: SellerSerializer, include: "*.*"
    end
    def index
        sellers = Seller.all 
        render json: sellers, each_serializer: SellerSerializer, include: "*.*"	
    end

    
end
