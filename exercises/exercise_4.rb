require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

[
  # {
  #   name: "Burnaby",
  #   annual_revenue: 300_000,
  #   mens_apparel: true,
  #   womens_apparel: true
  # },
  {
    name: "Richmond",
    annual_revenue: 1_260_000,
    mens_apparel: false,
    womens_apparel: true
  },
  {
    name: "Gastown",
    annual_revenue: 190_000,
    mens_apparel: true,
    womens_apparel: false
  },      {
    name: "Surrey",
    annual_revenue: 224_000,
    mens_apparel: false,
    womens_apparel: true
  },      {
    name: "Whistler",
    annual_revenue: 1_900_000,
    mens_apparel: true,
    womens_apparel: false
  },      {
    name: "Yaletown",
    annual_revenue: 430_000,
    mens_apparel: true,
    womens_apparel: true
  },
].each do |new_stores|
  Store.create!(new_stores)
end

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "~~~ #{store.name} annual revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")

print "Stores carrying women's apparel with an annual revenue below $1,000,000"

@womens_stores.each do |store|
  puts "~~~ #{store.name} annual revenue: #{store.annual_revenue}"
end




