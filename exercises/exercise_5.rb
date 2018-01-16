require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "~~~Sum of all stores' annual revenue~~~ #{Store.sum(:annual_revenue)}"

puts "~~~Average annual revenue for all stores: #{Store.sum(:annual_revenue) / Store.count}~~~"

puts "~~~Number of stores that are generating over $1M in sales annually: #{Store.where("annual_revenue >= 1000000").count}~~~"