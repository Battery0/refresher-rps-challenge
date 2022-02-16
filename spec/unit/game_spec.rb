require 'game'

describe Game do

  let(:game) { described_class.new(player_one_dbl, computer_player_dbl) }
  let(:player_one_dbl) { double("player_one") }
  let(:computer_player_dbl) { double("computer_player") }

  describe '#player1' do
    it 'should return a player object' do
      expect(game.player1).to eq(player_one_dbl)
    end
  end

  describe '#computer' do
    it 'should return a computer object' do
      expect(game.computer).to eq(computer_player_dbl)
    end
  end

end
