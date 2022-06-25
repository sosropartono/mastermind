require_relative 'computer'
require_relative 'player'
require_relative 'board'

class Game
  attr_reader :player, :board, :computer

  def initialize
    @computer = Computer.new
    @board = Board.new
    @player = Player.new
  end

  def play
    introduction_board
    # while computer.secret_code != player.player_guess
    make_move
  end

  private

  def computer_create_secret_code
    computer.create_secret_code
  end

  def introduction_board
    puts board.colors
  end

  def make_move
    player.make_move
  end

  # def feedback
  #   bulls = 0
  #   cows = 0
  #   computer = computer.secret_code
  #   guess = player.player_guess

  #   computer.each do |element|
  #     guess.include?(element)
  #     if guess.index(element) == element.index
  #       bulls += 1
  #     end

  #   end

  # end

  # def compare
  #   if in array but not right spot
  #     return
  # end

  def p; end
end

game = Game.new
game.play
puts game.computer.secret_code
