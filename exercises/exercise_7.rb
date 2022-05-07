require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter new store name:\n "
new_store_name = gets.chomp

new_store = Store.create(name: new_store_name)

puts "\n.errors.messages :"
pp new_store.errors

puts "\n.errors.full_messages :"
pp new_store.errors.full_messages

puts "\n.errors.details :"
pp new_store.errors.details

puts "\n.Checking for errors related to the :name atttribute ... "
pp new_store.errors.where(:name)

new_store.attribute_names.each do |attr|
  puts "\nErrors for the #{attr} attribute ..."
  pp new_store.errors.where(attr)
end






