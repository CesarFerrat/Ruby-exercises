require_relative("item")

class Fruit < Item
  def price
    now = Time.now

    if now.saturday? || now.sunday?
      return @price * 0.9
    else
      return @price
    end
  end
end
