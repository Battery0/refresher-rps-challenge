require 'computer'

describe Computer do

  let(:computer) { described_class.new }

  describe '#move' do
    it 'randomly selects either rock, paper or scissors as its move' do
      expect(computer.move).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

end
