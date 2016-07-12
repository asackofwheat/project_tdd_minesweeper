class Player
  attr_accessor :player, :coordinates
  
  def initialize
    @name = "player"
    @coordinates = []
  end

  def get_move_type
    puts "Please pick a move type (M, F):"
    gets.chomp
  end

  def get_move_loc
    until valid_move?
      puts "Please pick a location (e.g. 1,2):"
      @coordinates = gets.chomp.split(",").map(&to_i)
    end
    @coordinates
  end

  def valid_move?
    (1..10).include?(@coordinates[0]) && (1..10).include?(@coordinates[1])
  end



end
