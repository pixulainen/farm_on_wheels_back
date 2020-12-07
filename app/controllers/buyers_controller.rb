class BuyersController < ApplicationController

  def create
    buyer = Buyer.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password],phone_number: params[:phone_number])
      if buyer.save
       render json: {username: buyer.username, token: generate_token(id: buyer.id)}
      else
        puts "failed"
       render json: buyer.errors, status: :unprocessable_entity
     end
  end

    def show
        buyer = Buyer.find_by(id: get_buyer.id)
        render json: buyer, serializer: BuyerSerializer, include: "*.*"
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
