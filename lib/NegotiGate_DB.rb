require 'sequel'

DB = Sequel.connect(adapter: 'mysql', 
                    user: 'andrewgy8', 
                    host: 'localhost', 
                    password: 'andrewgy8',
                    database: 'negotiation'
                    ) 

=begin
DB.create_table :items do
  primary_key :id
  String :name
  Float :price
end
=end

items = DB[:users] # Create a dataset
items.where('id > ?', 0).delete
# Populate the table
items.insert(:id => 4, :f_name => 'abc', :l_name => rand * 100)
items.insert(:id => 5, :f_name => 'def', :l_name => rand * 100)
items.insert(:id => 6, :f_name => 'ghi', :l_name => rand * 100)

# Print out the number of records
puts "Item count: #{items.count}"

puts items.all

# Print out the average price
=begin
puts "The average price is: #{items}"
=end
