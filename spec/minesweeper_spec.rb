require 'minesweeper'

describe 'Minesweeper' do

  let(:m){Minesweeper.new}

  describe '#initialize' do

    it 'should give you an instance of class Minesweeper' do
      expect(m).to be_a(Minesweeper)
    end

    it 'should create a board' do
      expect(m.instance_variable_get(:@board)).to be_a(Board)
    end

    it 'should create a player' do
      expect(m.instance_variable_get(:@player)).to be_a(Player)
    end

  end

end


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



describe 'Board' do

  let(:b){Board.new}

  describe '#initialize' do

    it 'should create a bomb grid' do
      expect(b.bomb_grid).to be_a(Array)
    end

    it 'should create flag-activate grid' do
      expect(b.bomb_grid).to be_a(Array)
    end

  end

  describe '#populate' do

    it 'populates bomb grid with bombs'

  end

  describe '#number' do

    it 'fills out bomb grid with proximity numbers'

  end

  describe '#receive_flag' do

    it 'adds flag to flag_array' do
      let(:coordinate){[2,2]}
      b.receive_flag(coordinate)
      expect(b.flag_array[coordinate]).not_to be_nil
    end

    it 'removes flag to flag_array if flag was already there' do
      let(:coordinate){[2,2]}
      b.receive_flag(coordinate)
      b.receive_flag(coordinate)
      expect(b.flag_array[coordinate]).to be_nil
    end

  end

  describe '#activate_cell' do

    it 'adds activation mark to flag-activate grid' do
      b.activate_cell([1,2])
      expect(b.flag_array[1,2]).not_to be_nil
    end

  end
  
end
