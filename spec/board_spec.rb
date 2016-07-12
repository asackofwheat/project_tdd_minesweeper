require 'board'


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

    let(:coordinate){[2,2]}
    it 'adds flag to flag_grid' do

      b.receive_flag(coordinate)
      expect(b.flag_grid[coordinate[0]][coordinate[1]]).not_to be_nil
    end

    it 'removes flag from flag_grid if flag was already there' do

      b.receive_flag(coordinate)
      b.receive_flag(coordinate)
      expect(b.flag_grid[coordinate[0]][coordinate[1]]).to be_nil
    end

  end

  describe '#activate_cell' do

    it 'adds activation mark to flag-activate grid' do
      b.activate_cell([1,2])
      expect(b.flag_grid[1][2]).not_to be_nil
    end

  end

end
