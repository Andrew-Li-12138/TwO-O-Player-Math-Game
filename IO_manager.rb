class IO_manager

  def self.input
    gets.chomp.to_i
  end

  def self.correct_msg(name)
    puts "#{name}: Good Job!"
  end

  def self.wrong_msg(name)
    puts "#{name}: Wrong Answer..."
  end

  def self.print_question(name, num1, num2)
    puts "#{name}: what does #{num1} plus #{num2} equal? "
  end

  def self.print_score(name1, score1, name2, score2)
    puts "#{name1}: #{score1}/3 vs #{name2}: #{score2}/3"
  end

  def self.switch_msg(name)
    puts "-- #{name}'s Turn Ends, New Turn Begins --"
  end

  def self.winner_msg(name, score)
    puts "#{name} is the winner, and #{name}'s final score is #{score}"
  end
  
  def self.end_msg
    puts '------- Game Over --------'
  end

end

