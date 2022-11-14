class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(options)
    @capacity = options[:initial_capacity]
    @items = options[:items]
    @bike = options[:bike]
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.size * 10
  end

  def item_count
    self.items.count
  end

end
