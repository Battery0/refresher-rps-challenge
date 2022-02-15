class Player

  def initialize(name)
    @name = name
    @choice = nil
  end

  def name
    @name
  end

  def choose(move)
    @choice = move
  end

  def choice
    @choice
  end

end
