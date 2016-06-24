require "NegotiGate/version"

module NegotiGate
  
  class Negotiation
  
    def initialize(sellers_walkaway_price, buyers_walkaway_price)
      @sellers_walkaway_price = sellers_walkaway_price.int
      @buyers_walkaway_offer = buyers_walkaway_offer.int
    end

    # if the prices are equal, then the deal is finished
    def both_prices_equal?
      @sellers_walkaway_price == @buyers_walkaway_offer
    end

    #compares the two offers two each other
    def median_price_find
      if @sellers_walkaway_price < @buyers_walkaway_offer
        compromise_price = (@sellers_walkaway_price + @buyers_walkaway_offer) / 2

      elsif @sellers_walkaway_price > @buyers_walkaway_offer
        puts "Sorry, your offers need to be adjusted to find compromise."
      
      else
        puts "Sorry, could not compute."
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




