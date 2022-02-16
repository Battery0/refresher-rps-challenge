require_relative './player'
require_relative './computer'

class Game

  def initialize(player_one, computer_player)
    @player_one = player_one
    @computer_player = computer_player
  end

  def player1
    @player_one
  end

  def computer
    @computer_player
  end

  def player_choice
    @player_one.choice
  end

end
