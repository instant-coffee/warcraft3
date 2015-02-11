require 'pry'


class Barracks

attr_accessor :gold, :food, :lumber, :health_points

  def initialize
   @gold = 1000
   @food = 80
   @lumber = 500
   @health_points = 500
  end
  def damage(attack_power)
    @health_points -= attack_power
  end


  def can_train_footman?
    if (food > 1)&&(gold > 134)
      @gold -= 135
      @food -= 2
    end 
  end

  def train_footman
    Footman.new if can_train_footman?
  end
  
  def can_train_peasant?
    (food > 5)&&(gold > 90)
  end

  def train_peasant
    if can_train_peasant?
      @gold = @gold -= 90
      @food = @food -= 5
      Peasant.new
    end
  end
end


