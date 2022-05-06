require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue) #DIFFERENCE BETWEEN "" AND : SYMBOL?
puts "Total revenue: #{total_revenue}"

store_count = Store.count
puts "Store count: #{store_count}"
puts "Average revenue for stores: #{total_revenue / store_count}"

store_over_1m = Store.where('annual_revenue >= 1000000')
puts "Number of stores generating over 1M or more: #{store_over_1m.count}"