require_relative 'computer'
require_relative 'player'
require_relative 'board'

class Game
    attr_accessor :player
  def initialize
    @computer = Computer.new
    @board = Board.new
    @player = Player.new
  end

  def play

    player.make_move
    computer.create_secret_code
  end

  private

  def feedback
    # if com
  end

  def compare; end

  def p; end
end

game = Game.new
game.play
game.player.make_move
