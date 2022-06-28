require 'set'

class Computer
  attr_reader :numbers, :secret_code, :guess, :set, :tries

  def initialize
    @secret_code = []
    @guess = []
    @response = []
    @set = Set.new(1111..6666)
    @tries = 0
    @numbers = %w[1 2 3 4 5 6]
  end

  def create_secret_code
    for a in 1..4 do
      @secret_code << numbers.sample
      puts 'Secret Code Created!'
    end
  end

  def first_move
    @secret_code = [1, 1, 2, 2]
  end

  def calculate_score(black, white, none)

  def min_max(black, white, none)
    if 
    if none
    score
  end

  def make_move
    @secret_code = [1, 1, 2, 2] if @tries == 0

    # @secret_code = 
  end
end
