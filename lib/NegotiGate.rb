require "NegotiGate/version"

module NegotiGate
  attr_accessor :sellers_walkaway_price, :buyers_walkaway_price
  
  class Negotiation
  
    def initialize(sellers_walkaway_price, buyers_walkaway_price)
      @sellers_walkaway_price = sellers_walkaway_price
      @buyers_walkaway_price = buyers_walkaway_price
    end

    # if the prices are equal, then the deal is finished
    def both_prices_equal?
      @sellers_walkaway_price == @buyers_walkaway_price
    end

    #compares the two offers to each other
    def median_price_find
      if @sellers_walkaway_price < @buyers_walkaway_price
        compromise_price = ((@sellers_walkaway_price + @buyers_walkaway_price) / 2.0).to_f
      elsif @sellers_walkaway_price > @buyers_walkaway_price
        
        raise ArgumentError.new("Sorry, both offers need to be adjusted to find compromise.") 
      else
        puts "Sorry, could not compute. Please try again."
      end
    end

  end

  class User
    attr_accessor :position, :name
    
    def initialize(name, position)
      @name = name
      @position = position
    end

    def introduction
      puts "Hello #{@name}! We are going to try to conduct a peace full negotiation by using this program."
    end

    def negotiation_start
      if @position == "seller"
        negotiate_answer_seller
      elsif @position == "buyer"
        negotiate_answer_buyer
      end  
    end

    protected

    def negotiate_answer_buyer
      puts "#{@name}, what is your walk away price (ie. the highest price you are willing to go)?"
      STDIN.gets.chomp.to_i
    end

    def negotiate_answer_seller
      puts "What is your walk away price (ie. the lowest price you are willing to go)?"
      STDIN.gets.chomp.to_i
    end
  end

  user1 = User.new("Andrew", "seller")
  user2 = User.new("Eva", "buyer")

end




