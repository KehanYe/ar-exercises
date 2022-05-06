require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Epictetus", last_name: "The Stoic", hourly_rate: 11 )
@store1.employees.create(first_name: "Marcus", last_name: "Aurelius", hourly_rate: 350)
@store1.employees.create(first_name: "Aristotle", last_name: "the Polymath", hourly_rate: 121)
@store1.employees.create(first_name: "Dante", last_name: "Alighieri ", hourly_rate: 66)

@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 45)
@store2.employees.create(first_name: "John", last_name: "Dane", hourly_rate: 45)
@store2.employees.create(first_name: "John", last_name: "Dale", hourly_rate: 45)
@store2.employees.create(first_name: "John", last_name: "Dack", hourly_rate: 45)

total_employees = Employee.count

puts "Number Employees at Store 1: #{@store1.employees.count}"
puts "Number Employees at Store 1: #{@store2.employees.count}"
puts "Number Employees at all Stores: #{total_employees}"