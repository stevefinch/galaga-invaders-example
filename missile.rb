class Missile

  MOVE_AMOUNT = 10

  def initialize(x,y)
    @x = x
    @y = y
  end  

  def move
    @y -= MOVE_AMOUNT
  end  

  def draw

  end  
end  
