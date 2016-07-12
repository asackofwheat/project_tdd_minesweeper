require 'minesweeper'

describe 'Minesweeper' do

  let(:m){Minesweeper.new}

  describe '#initialize' do

    it 'should give you an instance of class Minesweeper' do
      expect(m.class).to eq(Minesweeper)
    end

    it 'should create a board' do
      expect(m.instance_variable_get(:@board)).to be_a(Board)
    end

    it 'should create a player' do
      expect(m.instance_variable_get(:@player)).to be_a(Player)
    end

  end

end
