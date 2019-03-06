class Missile < Structure
  include Attacker
  include Moveable

  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

  def sprite
    @sprite = args.fetch[:sprite]
  end
end
