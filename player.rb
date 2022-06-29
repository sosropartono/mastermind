class Player
  attr_reader :player_guess, :secret_code, :guess

  def initialize
    @guess = []
    @secret_code = []
    @response = []
  end

  def make_move
    puts 'Enter number for spot 1: '
    spot1 = gets.chomp.downcase
    puts 'Enter number for spot 2: '
    spot2 = gets.chomp.downcase
    puts 'Enter number for spot 3: '
    spot3 = gets.chomp.downcase
    puts 'Enter number for spot 4: '
    spot4 = gets.chomp.downcase
    @guess = [spot1, spot2, spot3, spot4]
  end

  def make_code
    puts 'Enter number for spot 1: '
    spot1 = gets.chomp.downcase
    puts 'Enter number for spot 2: '
    spot2 = gets.chomp.downcase
    puts 'Enter number for spot 3: '
    spot3 = gets.chomp.downcase
    puts 'Enter number for spot 4: '
    spot4 = gets.chomp.downcase
    @secret_code = [spot1, spot2, spot3, spot4]
  end

  # def make_guess
  #   @player_guess
  # end

  # def get_guess

  def update_choices; end
end
