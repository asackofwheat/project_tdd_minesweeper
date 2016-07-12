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
    it 'creates player object'
    it 'creates player name variable'
  end

  describe '#get_move_type' do
    it 'gets users move type choice'


  end

  describe '#get_move_loc' do
    it 'gets users move location choice'

    it 'returns error location as already been triggered by other move type'
  end
end



describe 'Board' do

  let(:b){Board.new}

  describe '#initialize' do

    it 'should create a bomb grid'
    it 'should create flag-activate grid'

  end

  describe '#populate' do
    it 'populates bomb grid with bombs'
  end

  describe '#number' do
    it 'fills out bomb grid with proximity numbers'
  end

  describe '#receive_flag' do
    it 'adds flag to flag_array'
  end

  describe '#activate_cell' do
    it 'adds activation mark to flag-activate grid'
  end
end
