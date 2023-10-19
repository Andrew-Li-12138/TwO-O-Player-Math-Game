require './computer'
require './player'
require './IO_manager'

# create Player's instances. We have two players for the game.
Player1 = Player.new('Alice', 3, nil)
Player2 = Player.new('Alex', 3, nil)

# create computer instance for the game, we call it Magi
Magi = Computer.new(Player1, Player2)

# assign Magi to both players as their computers
Player1.computer = Magi
Player2.computer = Magi

# store method called on instance (aka behaviour) from Magi as an array so we can iterate the sequance
run_game = [
  -> { Magi.ask_question },
  -> { Magi.current_player.get_answer },
  -> { Magi.current_player.game_message },
  -> { Magi.current_player.update_score },
  -> { Magi.print_score },
  -> { Magi.switch_turn }
]

loop do
  run_game.each do |behaviour|
    behaviour.call

    # logic of ending the game
    next unless Magi.player1.score <= 0 || Magi.player2.score <= 0

    IO_manager.end_msg
    # print winner info
    Magi.get_winner
    return
  end
end
