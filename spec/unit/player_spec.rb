require 'player'

describe Player do

  let(:player_one) { described_class.new("Dave") }

  describe '#name' do
    it 'returns the players name' do
      expect(player_one.name).to eq('Dave')
    end
  end

  describe '#choice' do
    it 'should return the players choice if rock' do
      player_one.choose('rock')
      expect(player_one.choice).to eq('rock')
    end

    it 'should return the players choice if paper' do
      player_one.choose('paper')
      expect(player_one.choice).to eq('paper')
    end

  end

end
