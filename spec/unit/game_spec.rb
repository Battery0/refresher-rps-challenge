require 'game'

describe Game do

  let(:game) { described_class.new(player_one) }
  let(:player_one) { double("player_one") }
  # let(:computer_player) { double("computer_player") }

  describe '#player_choice' do
    it 'should return either rock, paper, or scissors' do
      allow(player_one).to receive(:choice).and_return("Rock")
      allow(player_one).to receive(:choice).and_return("Paper")
      allow(player_one).to receive(:choice).and_return("Scissors")
      expect(game.player_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

end
