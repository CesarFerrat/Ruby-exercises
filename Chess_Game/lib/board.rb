require_relative("bishop.rb")
require_relative("rook.rb")

class Board
  def initialize
    @board = [
      [], [], [], [],
      [], [], [], []
    ]

    @board[0][0] = Rook.new(0, 0)
    @board[7][0] = Rook.new(7, 0)
    @board[0][7] = Rook.new(0, 7)
    @board[7][7] = Rook.new(7, 7)

    @board[2][0] = Bishop.new(2, 0)
    @board[5][0] = Bishop.new(5, 0)
    @board[2][7] = Bishop.new(2, 7)
    @board[5][7] = Bishop.new(5, 7)
  end

  def valid_move?(start, endd)
    x = start[0]
    y = start[1]

    new_x = endd[0]
    new_y = endd[1]

    if self.empty?(x, y) || !self.empty?(new_x, new_y)
      return false
    elsif new_x > 7 || new_y > 7
      return false
    else
        unless @board[x][y].move?(new_x, new_y)
          return false
        else
          return true
        end
    end
  end

  def empty?(x, y)
    if @board[x] == nil || @board[x][y] == nil
      return true
    else
      return false
    end
  end
end
