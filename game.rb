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
    feedback
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

  def feedback
    bulls = 0
    cows = 0
    computer = computer.secret_code
    guess = player.player_guess
    computer.each_with_index do |element, _index|
      if guess.index(element) == index
        guess[guess.index(element)] = 0
        cows += 1
      elsif guess.index(element)
        guess[guess.index(element)] = 0
        bulls += 1
      end
    end
    puts "Cows: #{cows}"
    puts "Bulls: #{cows}"
  end

  def p; end
end

game = Game.new
game.play
puts game.computer.secret_code
