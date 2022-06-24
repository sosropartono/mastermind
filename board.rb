class Board
  def initialize
    @game_row = Array.new(4, '_')
    @pegs = Array.new(4, '_')
    @colors = %w[red orange yellow green blue purple]
  end

  def introduction_board
    puts ' _ '
  end

  def display_board
    puts " #{@game_row[0]} #{@game_row[0]} #{@game_row[0]}  #{@game_row[0]} "
  end

  def display_pegs
    puts " #{@game_row[0]} #{@game_row[0]} #{@game_row[0]}  #{@game_row[0]} "
  end
end
