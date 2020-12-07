class ApplicationController < ActionController::API
    def secret
        ENV["MY_SECRET"]
    end
    
    def generate_token(data)
        JWT.encode(data, secret)
    end
    
    
    def decode_token
        token = request.headers["Authorization"]
        begin
          JWT.decode(token, secret).first
        rescue
          {}
        end
    end
    
    def get_buyer
        id = decode_token["id"]
        Buyer.find_by(id: id)
    end

    def create_payment(order_id)
        price = params["total"] * 100
        charge = Stripe::Charge.create(
          amount: price,
          description: "Farm on Wheels order #{order_id}",
          currency: 'gbp',
          source: params[:token]["id"]
        )
      
      rescue Stripe::CardError => e
        render json:  e.message
      end
end
    