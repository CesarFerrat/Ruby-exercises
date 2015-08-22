require_relative("piece.rb")

class King < Piece
  def move?(new_x, new_y)
    dx = (new_x - @x).abs
    dy = (new_y - @y).abs

    zero_to_one = 0..1

    if zero_to_one.include?(dx) && zero_to_one.include?(dy)
      return true
    else
      return false
    end
  end
end
