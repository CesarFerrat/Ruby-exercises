require_relative("piece.rb")

class Rook < Piece
  def move?(new_x, new_y)
    if @x == new_x || @y == new_y
      return true
    else
      return false
    end
  end
end
