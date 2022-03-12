class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name, :hit_points
  
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(opponent)
    opponent.get_banged
  end

  def get_banged
    @hit_points -= 10
  end
end