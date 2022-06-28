require_relative 'computer'
require_relative 'player'
require_relative 'board'

class Game
  attr_reader :player, :board, :computer

  def initialize
    @computer = Computer.new
    @board = Board.new
    @player = Player.new
    @winner = 0
    @tries = 0
  end

  def play
    puts 'do you want to be coder or solver'
    answer = gets.chomp
    if answer == 'solver'
      introduction_board
      computer_create_secret_code
      while @winner != 1 && @tries < 12
        make_move(player)
        feedback(computer, player)
        @tries += 1
      end
      winner_statement
    else
      introduction_board
      player_create_secret_code
      while @winner != 1 && @tries < 12
        make_move(computer)
        feedback(player, computer)
        @tries += 1
      end
      winner_statement
    end
  end

  private

  def player_create_secret_code
    player.make_code
  end

  def winner_statement
    puts 'we have a winner!'
  end

  def computer_create_secret_code
    computer.create_secret_code
  end

  def introduction_board
    puts board.numbers
  end

  def make_move(solver)
    solver.make_move
  end

  def feedback(coder, solver)
    black = 0
    white = 0
    none = 0
    secret_code = coder.secret_code
    guess = solver.guess
    puts "#{solver}'s guess is #{guess}"
    puts "secret code is #{secret_code}"
    secret_code.each_with_index do |element, index|
      if index == guess.index(element)
        guess[guess.index(element)] = 0
        black += 1
      elsif guess.index(element)
        guess[guess.index(element)] = 0
        white += 1
      else
        none += 1

      end
    end
    puts "black: #{black}"
    puts "white: #{white}"
    puts "None: #{none}"
    coder.min_max(black, white, none) if coder.instance_of?(Computer)
    winner_check(black)
  end

  def winner_check(bulls)
    @winner = 1 if bulls == 4
  end
end

game = Game.new
game.play
print game.computer.secret_code
