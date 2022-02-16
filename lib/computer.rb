class Computer

  def move
    random_number = random_number_generator
    case random_number 
      when 1
        "Rock"
      when 2
        "Paper"
      when 3
        "Scissors"
    end
  end

  private
  
  def random_number_generator
    rand(1..3)
  end

end
