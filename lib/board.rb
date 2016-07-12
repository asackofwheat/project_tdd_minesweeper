class Board
  attr_accessor :bomb_grid, :flag_grid

  def initialize
    @bomb_grid = Array.new(10){Array.new(10)}
    @flag_grid = Array.new(10){Array.new(10)}
  end

  def receive_flag(coordinate)
    if flag_grid[coordinate[0]][coordinate[1]].nil?
      flag_grid[coordinate[0]][coordinate[1]] = "F"
    elsif flag_grid[coordinate[0]][coordinate[1]] == "F"
      flag_grid[coordinate[0]][coordinate[1]] = nil
    end
  end

end
