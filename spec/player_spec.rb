require 'player'

describe Player do
  subject(:player1){ described_class.new("John")}
  subject(:player2){ described_class.new("Paul") }

  it 'has a name' do
    expect(player1).to respond_to(:name)
  end

  describe '#hp' do
    it 'has default hp' do
      expect(player1.hp).to eq(described_class::DEFAULT_HP)
    end
  end

  describe '#attack' do
    it 'damages a player' do
      expect(player2).to receive(:reduce_hp)
      player1.attack(player2)
    end
  end

  describe '#reduce_hp' do
    it 'reduces hp by 10' do
      expect { player1.reduce_hp }.to change { player1.hp }.by(-10)
    end
  end

end
