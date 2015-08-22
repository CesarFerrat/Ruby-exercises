require_relative("piece.rb")

class Bishop < Piece
  def move?(new_x, new_y)
    dx = (new_x - @x).abs
    dy = (new_y - @y).abs

    if dx == dy
      return true
    else
      return false
    end
  end
end
