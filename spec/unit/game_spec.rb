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

  describe '#result' do
    it 'returns draw if both player and computer choose the same' do
      allow(player_one_dbl).to receive(:choice).and_return("Rock")
      allow(computer_player_dbl).to receive(:choice).and_return("Rock")
      expect(game.result).to eq("draw")
    end

    it 'returns win if player beats computer' do
      allow(player_one_dbl).to receive(:choice).and_return("Rock")
      allow(computer_player_dbl).to receive(:choice).and_return("Scissors")
      expect(game.result).to eq("win")
    end

    it 'returns loose if computer beats player' do
      allow(player_one_dbl).to receive(:choice).and_return("Rock")
      allow(computer_player_dbl).to receive(:choice).and_return("Paper")
      expect(game.result).to eq("lose")
    end
  end

end
