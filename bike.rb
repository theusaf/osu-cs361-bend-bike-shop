# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(options)
    @id = options[:id]
    @color = options[:color]
    @price = options[:price]
    @weight = STANDARD_WEIGHT
    @luggage = Luggage.new({
      :capacity => Luggage::DEFAULT_MAX_CAPACITY,
      :items => options[:extra_items],
      :bike => self
    })
  end

end
