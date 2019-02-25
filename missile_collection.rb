class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(ship_or_alien)
    missile = Missile.new(ship_or_alien.muzzle_location)
    missile.launch(ship_or_alien.missile_speed)
    add(missile)
  end

end
