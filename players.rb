class Player

  attr_accessor(:name, :current_lives, :start_lives)

  def initialize(name)
    @name = name
    @current_lives = 3
    @start_lives = 3
  end

  def scores
    "'#{self.current_lives}/#{self.start_lives}'"
  end

  def loss
    self.current_lives -= 1
  end

end