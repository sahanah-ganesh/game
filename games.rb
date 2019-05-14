class Game

  attr_accessor(:current_player, :random1, :random2, :end)

  def initialize
    @current_player = "player 1"
    @random1 = 0
    @random2 = 0
    @end = false
  end

  protected
  def random_number
    number = Random.new
    self.random1 = number.rand(1..20)
    self.random2 = number.rand(1..20)
  end

  def math_question
    question = "#{self.random1.to_s} + #{self.random2.to_s} = ?"
  end

  def new_question
    self.random_number
    puts "#{self.current_player}: #{self.random1} + #{self.random2} = ?"
  end

  def next_round
    if self.current_player == "player 1"
      self.current_player = "player 2"
    else
      self.current_player == "player 1"
    end
  end

  def validate(player1, player2)
    answer = gets.chomp.to_i
    if answer == self.random1 + self.random2
      puts "CORRECT"
    else
      puts "INCORRECT"
      player1.loss if self.current_player == "player 1"
      player2.loss if self.current_player == "player 2"
    end
    puts "#{player1.name}: #{player1.scores} vs #{player2.name}: #{player2.scores}"
    self.next_round
  end

  def finish_him(player1, player2)
    if player1.current_lives == 0
      puts "Player 2 wins! #{player2.scores}"
      puts "GAME OVER"
      self.end = true
    elsif player2.current_lives == 0
      puts "Player 1 wins! #{player1.scores}"
      puts "GAME OVER"
      self.end = true
    else
      puts "NEXT ROUND"
    end
  end

  public
  def ready(player1, player2)
    while !self.end
      self.new_question
      self.validate(player1, player2)
      player1.scores
      player2.scores
      self.finish_him(player1, player2)
    end
  end
end

