require 'game'

describe Game do
  subject(:battle){ described_class.new }
  let(:player1){ double :player1 }
  let(:player2){ double :player2 }


  describe '#attack' do
    it 'damages a player' do
      expect(player2).to receive(:reduce_hp) 
      battle.attack(player2)
    end
  end


  end

