require 'game'

describe Game do
  subject(:battle){ described_class.new(player1,player2) }
  let(:attackee){ double :attackee }
  let(:player2){ double :player2 }
  let(:player1){ double :player1 }

  describe '#initialize' do
    it 'starts with attackee as player2' do
      expect(battle.attackee).to eq player2
    end
  end

  describe '#attack' do
    it 'damages a player' do
      expect(player2).to receive(:reduce_hp)
      battle.attack
    end
  end

  describe '#switch_turns' do
    it 'switches the attackee' do
      battle.switch_turns
      expect(battle.attackee).to eq player1
    end
  end

end
