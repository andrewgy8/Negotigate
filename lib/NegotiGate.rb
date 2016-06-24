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

  
  def negotiate_answer_buyer
    puts "What is your walk away price (ie. the highest price you are willing to go)?"
    negotiate_answer = gets.chomp
  end

  def negotiate_answer_seller
    puts "What is your walk away price (ie. the lowest price you are willing to go)?"
    negotiate_answer = gets.chomp
  end

  user1 = negotiate_answer_seller
  user2 = negotiate_answer_buyer
  
end




