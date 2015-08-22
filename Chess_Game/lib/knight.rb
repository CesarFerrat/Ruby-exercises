require_relative("piece.rb")

class Knight < Piece
  def move?(new_x, new_y)
    dx = (new_x - @x).abs
    dy = (new_y - @y).abs

    if (dx == 1 && dy == 2) || (dx == 2 && dy == 1)
      return true
    else
      return false
    end
  end
end
