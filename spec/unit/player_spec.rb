require 'player'

describe Player do

  let(:player_one) { described_class.new("Dave") }

  describe '#name' do
    it 'returns the players name' do
      expect(player_one.name).to eq('Dave')
    end
  end

end
