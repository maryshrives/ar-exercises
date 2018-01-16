require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store1.employees.create( first_name: "Mary",
                          last_name: "S",
                          hourly_rate: 20
                        )
@store1.employees.create( first_name: "Don",
                          last_name: "Draper",
                          hourly_rate: 30
                        )
@store2 = Store.find(2)
@store2.employees.create( first_name: "Ken",
                          last_name: "Cosgrove",
                          hourly_rate: 30
                        )
@store2.employees.create( first_name: "Joan",
                          last_name: "Holloway",
                          hourly_rate: 25
                        )
@store2.employees.create( first_name: "Peggy",
                          last_name: "Olson",
                          hourly_rate: 40
                        )
#@store4 = Store.find(4)

# @store4.employees.create( first_name: "Jimmy",
#                           last_name: "Barrett",
#                           hourly_rate: 15
#                         )
