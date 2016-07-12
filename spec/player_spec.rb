require 'player'

describe 'Player' do

  let(:p){Player.new}
  describe '#initalize' do

    it 'creates player object' do
      expect(p).to be_a(Player)
    end

    it 'creates player name variable' do
      expect(p.instance_variable_get(:@name)).not_to be_nil
    end

  end

  describe '#get_move_type' do

    it 'gets users move type choice' do
      allow(p).to receive(:get_move_type).and_return("flag")
      expect(p.get_move_type).to eq("flag")
    end

  end

  describe '#get_move_loc' do

    it 'gets users move location choice' do
      allow(p).to receive(:get_move_loc).and_return([1,1])
      expect(p.get_move_loc).to eq([1,1])
    end

    it 'returns error location is not valid if invalid move' do
      expect(p.valid_move?([11,14])).to be(false)
    end

  end
end
