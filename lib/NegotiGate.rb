require "NegotiGate/version"

module NegotiGate
  
  class Negotiation
  
    def initialize(sellers_original_price, buyers_original_offer)
      @sellers_original_price = sellers_original_price
      @buyers_original_offer = buyers_original_offer
    end

    def both_prices_equal?
      if @sellers_original_price == @buyers_original_offer
        true
      else
        false
      end
    end

  end
end
