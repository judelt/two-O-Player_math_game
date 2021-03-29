class Player
  attr_accessor :name, :lives, :number

  def initialize(name, number, lives = 3)
    @name = name
    @number = number
    @lives = lives
  end

  def alive?
    @lives > 0
  end

end