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
  end

  def play
    puts 'do you want to be coder or solver'
    answer = gets.chomp
    if answer == 'solver'
      make_move(player)
      introduction_board
      computer_create_secret_code
      while @winner != 1
        make_move(player)
        feedback(computer, player)
      end
      winner
    else
      make_move(computer)
      introduction_board
      player_create_secret_code
      while @winner != 1
        make_move(computer)
        feedback(player, computer)
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

  def feedback(_coder, _solver)
    bulls = 0
    cows = 0
    neither = 0
    secret_code = coder.secret_code
    guess = solver.guess
    print "Player's guess is #{guess} "
    secret_code.each_with_index do |element, index|
      if index == guess.index(element)
        guess[guess.index(element)] = 0
        cows += 1
      elsif guess.index(element)
        guess[guess.index(element)] = 0
        bulls += 1
      else
        neither += 1

      end
    end
    puts "black: #{cows}"
    puts "white: #{bulls}"
    puts "None: #{neither}"
    winner_check(bulls)
  end

  def winner_check(bulls)
    @winner = 1 if bulls == 4
  end
end

game = Game.new
game.play
print game.computer.secret_code
