class Computer

  def initialize
    @choice = nil
  end

  def move
    random_number = random_number_generator
    case random_number 
      when 1
        @choice = "Rock"
      when 2
        @choice = "Paper"
      when 3
        @choice = "Scissors"
    end
  end

  def choice
    @choice
  end

  private
  
  def random_number_generator
    rand(1..3)
  end

end
