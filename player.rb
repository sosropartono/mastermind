class Player
  attr_accessor :choices

  def initialize
    @player_guess = []
  end

  private
  def make_move
    for a in 1..4 do
      guess = gets.chomp
      @player_guess << colors.sample
      print secret_code
      end
  end

  def update_choices; end
end
