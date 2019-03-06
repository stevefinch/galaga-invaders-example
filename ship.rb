class Ship < Structure
  include Attackable
  include Attacker

  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

end
