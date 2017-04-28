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

  describe '#game_over' do
    it 'returns false if no loser' do
      expect(player1).to receive(:hp) { 50 }
      expect(player2).to receive(:hp) { 50 }
      expect(battle.game_over?).to be false
    end
    it 'returns true if hp = 0' do
      expect(player2).to receive(:reduce_hp).exactly(5).times
      5.times {battle.attack}
      expect(player2).to receive(:hp) { 0 }
      expect(player1).to receive(:hp) { 50 }
      expect(battle.game_over?).to be true
    end
  end

end
