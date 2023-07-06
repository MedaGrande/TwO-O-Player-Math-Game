require './Questions'
require './Players'
require './Game'


# instantiate Players class
player_1 = Players.new('Jimmy')
player_2 = Players.new('John')

# instantiate Game class
@new_game = Game.new(player_1, player_2)

# start game
@new_game.start_game

