# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage
  attr_writer :luggage

  def initialize(options)
    @id = options[:id]
    @color = options[:color]
    @price = options[:price]
    @weight = STANDARD_WEIGHT
  end

end
