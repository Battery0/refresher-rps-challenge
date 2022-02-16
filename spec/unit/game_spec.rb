require 'game'

describe Game do

  let(:game) { described_class.new(player_one_dbl) }
  let(:player_one_dbl) { double("player_one") }
  # let(:computer_player) { double("computer_player") }

  describe '#player1' do
    it 'should return a player object' do
      expect(game.player1).to eq(player_one_dbl)
    end
  end

  describe '#player_choice' do
    it 'should return either rock, paper, or scissors' do
      allow(player_one_dbl).to receive(:choice).and_return("Rock")
      allow(player_one_dbl).to receive(:choice).and_return("Paper")
      allow(player_one_dbl).to receive(:choice).and_return("Scissors")
      expect(game.player_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

end
