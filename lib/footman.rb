# http://classic.battle.net/war3/human/units/footman.shtml
require 'pry'
class Footman < Unit

  attr_accessor :health_points, :attack_power

  def initialize
    @health_points = 60
    @attack_power = 10
  end
  

  def attack!(enemy)
    attack_power = @attack_power
    if enemy.is_a?(Barracks)
    attack_power = (attack_power/2)
  end
  enemy.damage(attack_power)
end



  # def damage(attack_power)
  #   @health_points -= attack_power
  # end
end
