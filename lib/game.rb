class Game

  def initialize(player_one = Player.new)
    @player_one = player_one
  end

  def player1
    @player_one
  end

  def player_choice
    @player_one.choice
  end

end
