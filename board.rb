class Board
  attr_reader :numbers, :tries

  def initialize
    @game_row = Array.new(4, '_')
    @tries = 0
    @numbers = %w[1 2 3 4 5 6]
  end

  def introduction_board
    print ' _ '
  end

  def display_board
    print " #{@game_row[0]} #{@game_row[0]} #{@game_row[0]}  #{@game_row[0]} "
  end
end
