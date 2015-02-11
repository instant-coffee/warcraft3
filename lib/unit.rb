require 'pry'

class Unit
  attr_reader :health_points, :attack_power

  def initialize (health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    if enemy.health_points >= 1
      "Can't kill 'em twice"
    else
      enemy.damage(@attack_power)
    end
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def is_dead?
    if @health_points == 0
      true
    else
      puts "I'm not dead yet, motherfucker!"
    end
  end
end
