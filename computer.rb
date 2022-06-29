require 'set'

class Computer
  attr_reader :numbers, :secret_code, :guess, :set, :tries, :possible_codes, :next_guess

  NUMBERS = %w[1 2 3 4 5 6].freeze

  def initialize
    @secret_code = []
    @guess = []
    @next_guess = []
    # @possible_codes = generate_all_possible_code
    @tries = 0
  end

  def create_secret_code
    for a in 1..4 do
      @secret_code << NUMBERS.sample
    end
    puts 'Computer has Created the Code!'
  end

  def next_guess(secret_code)
    i = 0
    new_guess = []
    includes = []
    while i < 4
      puts "guess is #{guess[i]}"
      new_guess << if secret_code[i] == @guess[i]
                     secret_code[i]
                   else
                     NUMBERS.sample
                   end
      i += 1
    end
    @guess = new_guess
  end

  def make_move
    @guess = %w[1 1 2 2] if @tries.zero?
    @tries += 1
  end
end

# def generate_all_possible_code
#   permutation = []
#   NUMBERS.repeated_permutation(4) { |num| permutation.push(num) }
#   permutation
# end
