class BuyersController < ApplicationController
    def show
        
    end

    def sign_in
        buyer = Buyer.find_by(username: params[:username])
        if buyer && buyer.authenticate(params[:password])
          render json: { buyer: buyer.username, token: generate_token(id: buyer.id) }
        else
          render json: { error: "Username or Password is invalid "}
        end
      end
    def validate
        if get_buyer
          render json: { buyer: get_buyer.username, token: generate_token(id: get_buyer.id)}
        else
          render json: { error: "You are not authorized" }
        end
    end
    
end
