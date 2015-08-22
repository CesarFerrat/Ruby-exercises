class ShoppingCart
  attr_accessor(:items)

  def initialize
    @items = []
  end

  def add(item)
    @items.push(item)
  end

  def checkout
    total = @items.reduce(0) do |sum, item|
      sum + item.price
    end

    if @items.size > 5
      total * 0.9
    else
      total
    end
  end
end
