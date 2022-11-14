#! /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

items = [:apple, :water, :protein_bar]

bike = Bike.new({
  :id => 1,
  :color => :pink,
  :price => 99.99
})
luggage = Luggage.new({
  :capacity => Luggage::DEFAULT_MAX_CAPACITY,
  :items => items,
  :bike => bike
})
bike.luggage = luggage

rental = Rental.new(bike, luggage)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

