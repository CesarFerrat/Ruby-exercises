require_relative("lib/board.rb")

board = Board.new
moves = [
  # invalid starting position moves
  { :start => [ 2, 4 ], :end => [ 7, 7 ], :expected => false },
  { :start => [ 6, 5 ], :end => [ 7, 7 ], :expected => false },

  # piece at destination
  { :start => [ 7, 7 ], :end => [ 0, 7 ], :expected => false },
  { :start => [ 7, 7 ], :end => [ 7, 0 ], :expected => false },

  # out of bounds
  { :start => [ 0, 0 ], :end => [ 42, 42 ], :expected => false },

  # invalid rook moves
  { :start => [ 0, 0 ], :end => [ 4, 4 ], :expected => false },
  { :start => [ 7, 7 ], :end => [ 6, 5 ], :expected => false },

  # valid rook moves
  { :start => [ 0, 0 ], :end => [ 0, 4 ], :expected => true },
  { :start => [ 7, 7 ], :end => [ 7, 3 ], :expected => true },

  # invalid bishop moves
  { :start => [ 2, 0 ], :end => [ 6, 2 ], :expected => false },
  { :start => [ 2, 7 ], :end => [ 2, 3 ], :expected => false },

  # valid bishop moves
  { :start => [ 2, 0 ], :end => [ 5, 3 ], :expected => true },
  { :start => [ 2, 7 ], :end => [ 0, 5 ], :expected => true },
]

moves.each do |move|
  result = board.valid_move?(move[:start], move[:end])
  if result == move[:expected]
    conclusion = "ok"
  else
    conclusion = "WTF BBQ"
  end
  puts "#{conclusion}: #{move[:start]} --> #{move[:end]} = #{result}"
end

# a b c d e f g h
# 0 1 2 3 4 5 6 7

# 1 2 3 4 5 6 7 8
# 0 1 2 3 4 5 6 7
