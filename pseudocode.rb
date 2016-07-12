classes
  Minesweeper
  View
  Board (10x10)
  Player


initialize
  create board
  create player

play
  welcome message
  render board
  loop
    turn
    render board
    break loop if game over
  end
  game over message
end

Board

initialize with bomb_array Array.new(10){Array.new(10)}
initialize flag_array with hidden bombs for view

marking square


activating square
