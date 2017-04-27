require 'player'

describe Player do
  subject(:player){ described_class.new("John")}
  it 'has a name' do
    expect(player).to respond_to(:name)
  end
end
