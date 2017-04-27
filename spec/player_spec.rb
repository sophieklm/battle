require 'player'

describe Player do
  subject(:player){ described_class.new("John")}
  it 'has a name' do
    expect(player).to respond_to(:name)
  end

  it 'has 50hp' do
    expect(player.hp).to eq(50)
  end
end
