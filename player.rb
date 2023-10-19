class Player
  attr_accessor :name, :score, :current_score, :computer, :answer

  def initialize(name, score, computer)
    self.name = name
    self.score = score
    self.current_score = score
    self.computer = computer
    self.answer = answer
  end

  def get_answer
    self.answer = IO_manager.input
  end

  def update_score
    # deduct socre when answer wrong
    player_answer = answer
    correct_answer = computer.number1 + computer.number2

    return current_score unless player_answer != correct_answer && score > 0

    self.current_score = self.score -= 1
    current_score
  end

  def game_message
    player_answer = answer
    correct_answer = computer.number1 + computer.number2
    if player_answer != correct_answer && self.score > 0
      IO_manager.wrong_msg(name)
    else
      IO_manager.correct_msg(name)
    end
  end
end
