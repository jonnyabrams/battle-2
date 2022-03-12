require 'player'

describe Player do
  subject(:lyna) { described_class.new('Lyna') }
  subject(:diego) { described_class.new('Diego') }
  
  describe '#name' do
    it 'returns its name' do
      expect(lyna.name).to eq 'Lyna'
    end
  end

  describe '#attack' do
    it 'reduces opponent hit points by 10' do
      expect { lyna.attack(diego) }.to change { diego.hit_points }.by(-10)
    end
  end
end