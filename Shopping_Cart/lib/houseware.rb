require_relative("item")

class Houseware < Item
  def price
    if @price > 100
      return @price * 0.95
    else
      return @price
    end
  end
end
