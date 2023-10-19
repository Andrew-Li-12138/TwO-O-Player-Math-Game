class Computer
  attr_accessor :player1, :player2, :current_player, :number1, :number2

  def initialize(player1, player2)
    self.player1 = player1
    self.player2 = player2
    self.current_player = player1
    self.number1 = 0
    self.number2 = 0
  end

  def ask_question 
    self.number1 = rand(1..20)
    self.number2 = rand(1..20)
    IO_manager.print_question(current_player.name, number1, number2)
  end

  def print_score
    IO_manager.print_score(player1.name, player1.current_score, player2.name, player2.current_score)
  end

  def switch_turn
    IO_manager.switch_msg(current_player.name)
    self.current_player = (current_player == player1) ? player2 : player1
  end

  def get_winner
    if player1.score == 0
      IO_manager.winner_msg(player2.name, player2.score)
    elsif Magi.player2.score == 0
      IO_manager.winner_msg(player1.name, player1.score)
    end
  end
end
