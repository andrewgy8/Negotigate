require "NegotiGate/version"

module NegotiGate
  
  class Negotiation
  
    def initialize(sellers_original_price, buyers_original_offer)
      @sellers_original_price = sellers_original_price
      @buyers_original_offer = buyers_original_offer
    end

    # if the prices are equal, then the deal is finished
    def both_prices_equal?
      @sellers_original_price == @buyers_original_offer
    end

    #if 'yes', then on to the negotiation engine
    def negotiate?
      if negotiate_answer == 'yes'
        true
      end
    end

    #compares the two offers two each other
    def compare_the_offers
      if @sellers_original_price < @buyers_original_offer

      elsif @sellers_original_price > @buyers_original_offer

      else

      end
    
    end
  end

  class User
    attr_accessor :negotiate_answer, :user_name

    def initialize(user_name)
      @user_name = user_name
    end

    def negotiate_answer
      @negotiate_answer = gets.chomp.downcase
      if @negotiate_answer == 'yes'
        true
      end
    end
  end
end




