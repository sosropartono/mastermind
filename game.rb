require_relative 'computer'
require_relative 'player'
require_relative 'board'
require_relative 'foo'

class Game
  include Foo
  attr_accessor :player

  def initialize
    @computer = Computer.new
    @board = Board.new
    @player = Player.new
  end

  def play
    make_move(player)
    computer.create_secret_code
  end

  def make_move(player)
    get_guesses(player)
  end

  private

  def get_guesses(player)
    puts 'Enter color for spot 1: '
    spot1 = gets.chomp.downcase
    puts 'Enter color for spot 2: '
    spot2 = gets.chomp.downcase
    puts 'Enter color for spot 3: '
    spot3 = gets.chomp.downcase
    puts 'Enter color for spot 4: '
    spot4 = gets.chomp.downcase
    player.player_guess = [spot1, spot2, spot3, spot4]
    print player.player_guess
  end

  def feedback; end

  def compare; end

  def p; end
end

game = Game.new
game.play
game.player.make_move
