require 'set'

class Computer
  attr_reader :numbers, :secret_code, :guess

  def initialize
    @secret_code = []
    @guess = []
    @response = []
    @numbers = %w[1 2 3 4 5 6]
  end

  def create_secret_code
    for a in 1..4 do
      @secret_code << numbers.sample
      puts 'Secret Code Created!'
    end
  end

  def make_move
    @computer_guess = [spot1, spot2, spot3, spot4]
    set = Set.new(1111..6666)

  end

  def mini_max end
end
