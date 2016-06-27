require "NegotiGate/version"

module NegotiGate
  
  class Negotiation
    attr_accessor :sellers_walkaway_price, :buyers_walkaway_price

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
        readjust_walkaway_prices
      else
        puts "Sorry, could not compute. Please try again."
      end
    end

    #allows new instance of established user class to have readjusted variables
    def readjust_walkaway_prices
      return "I am readjusting"
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


=begin

  class Database
    def create_database
      CREATE TABLE `users` (
        `id` int PRIMARY KEY,
        `f_name` varchar(255),
        `l_name` varchar(255),
        `email` varchar(255),
        `phone` int,
        `pword_hash` varchar(255),
        `role` varchar(255),
        `created` datetime,
        `updated` datetime,
        `enabled` bool
      );
      CREATE TABLE `postings` (
        `id` int PRIMARY KEY,
        `title` varchar(255),
        `description` varchar(255),
        `selling_user` int,
        `list_price` int,
        `url` varchar(255),
        `created` datetime,
        `updated` datetime,
        `enabled` bool,
        FOREIGN KEY(`selling_user`) REFERENCES `users` (`id`)
      );
      CREATE TABLE `offers` (
        `id` int PRIMARY KEY,
        `posting_id` int,
        `sellers_lowest` varchar(255),
        `buyer_id` int,
        `buyers_highest` int,
        `buyer_state` varchar(255),
        `seller_state` varchar(255),
        `resolved` bool,
        `created` datetime,
        `updated` datetime,
        `enabled` bool,
        FOREIGN KEY(`posting_id`) REFERENCES `postings` (`id`),
        FOREIGN KEY(`buyer_id`) REFERENCES `users` (`id`)
      );  
    end
  end

  db = Database.new
  negotiation_table = MySQL.new('andrew', '', '', 'negotiation_table')
  negotiation_db = negotiation_table.create_db('negotiation')
  =end

end




