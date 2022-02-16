require_relative './player'
require_relative './computer'

class Game
  
  WIN_CONDITIONS = {
    "Rock" => "Scissors",
    "Paper" => "Rock",
    "Scissors" => "Paper"
  }.freeze

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

  def result
    if @player_one.choice == @computer_player.choice
      "draw"
    elsif @player_one.choice && @computer_player.choice == WIN_CONDITIONS[@player_one.choice]
      "win"
    else
      "lose"
    end
  end

end


# game = Game.new(Player.new("p1"), Computer.new)
# game.player1.choose("Scissors")
# p game.player1.choice
# p game.computer.move
# p game.computer.choice
# p game.result