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
    introduction
    answer = gets.chomp.downcase
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

  def introduction
    puts 'Welcome to Mastermind!'
    puts 'You will either create a code(Coder) or be the code cracker(Solver)!'
    puts 'The Coder will create a 4 digit code from numbers 1 - 6'
    puts 'The Solver will have 12 Rounds to solve the code, or the Coder wins!'
    puts 'Can you beat the machine?'
    puts 'Will you be the Solver or Coder?'
  end

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
    board.introduction_board
  end

  def make_move(solver)
    solver.make_move
  end

  def feedback(coder, solver)
    solver_guess = []
    solver.guess.each { |element| solver_guess << element }
    black = 0
    white = 0
    none = 0
    secret_code = coder.secret_code
    secret_code.each_with_index do |element, index|
      if index == solver_guess.index(element)
        solver_guess[solver_guess.index(element)] = 0
        black += 1
      elsif solver_guess.index(element)
        solver_guess[solver_guess.index(element)] = 0
        white += 1
      else
        none += 1
      end
    end
    puts "black: #{black}"
    puts "white: #{white}"
    puts "None: #{none}"
    solver.next_guess(secret_code) if solver.instance_of? Computer
    winner_check(black)
  end

  def winner_check(bulls)
    @winner = 1 if bulls == 4
  end
end

game = Game.new
game.play
