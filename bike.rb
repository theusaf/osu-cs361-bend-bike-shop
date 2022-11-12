# Bike

class Cargo

  MAX_CARGO_ITEMS = 10

  attr_accessor :max_items

  def initialize(max_items = MAX_CARGO_ITEMS)
    @max_items = max_items
    @contents = []
  end

  def add(item)
    @contents << item
  end

  def remove(item)
    @contents.remove(item)
  end

  def size
    @contents.size
  end

  def remaining_capacity
    @max_items - size
  end

end

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    @cargo.add(item)
  end

  def remove_cargo(item)
    @cargo.remove(item)
  end

  def pannier_capacity
    @cargo.max_items
  end

  def pannier_remaining_capacity
    @cargo.remaining_capacity
  end

end
