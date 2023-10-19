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
    puts "#{current_player.name}: what does #{number1} plus #{number2} equal? "
  end

  def print_score
    puts "#{player1.name}: #{player1.current_score}/3 vs #{player2.name}: #{player2.current_score}/3"
  end

  def switch_turn
    puts "-- #{current_player.name}'s Turn Ends, New Turn Begins --"
    self.current_player = (current_player == player1) ? player2 : player1
  end

  def get_winner
    if player1.score == 0
      puts "#{player2.name} is the winner, and #{player2.name}'s final score is #{player2.score}"
    elsif Magi.player2.score == 0
      puts "#{player1.name} is the winner, and #{player1.name}'s final score is #{player1.score}"
    end
  end
end
