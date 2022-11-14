class Rental

  attr_reader :bike

  def initialize(bike, luggage)
    @bike = bike
    @luggage = luggage
  end

  def price
    self.bike.price + 2 * self.bike.weight + 2 * @luggage.weight
  end

  def weight
    self.bike.weight + @luggage.item_count
  end

end
