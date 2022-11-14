class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + self.bike.luggage.item_count * 10
  end

  def weight
    self.bike.weight + self.bike.luggage.item_count
  end

end
