class Ninja
  attr_accessor :name, :health, :power
  def initialize(name:, health:, power:)
    @name = name
    @health = health
    @power = power
  end

  def kungpow(enemy)
    enemy.lose_health(@power)
  end

  def lose_health(enemy_power)
    @health -= enemy_power
  end

end
