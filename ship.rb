# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200
  MOVE_AMOUNT = 5

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move_left
    @x -= MOVE_AMOUNT
    @x = max(WIDTH/2, @x)
  end

  def move_right
    @x += MOVE_AMOUNT
    @x = min(screen_width - WIDTH/2, @x) #TODO how to get screen width?
  end

  def fire_missile
    Missile.new(@x, @y + HEIGHT / 2)
  end

  def draw
    # Ignore this
  end

 
end

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
=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
The design process will reveal the abstractions
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
Single Responsibility
Open to Extension Closed to Modification
Liskov Sunstitution
Interface Segregation
Dependency Inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
  True and False - First design only enought to start but then design can be incremental
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
  Exemplary
5. How does applying SRP naturally lead to good design?
  Single repossibility leads to greater cohesion and leads to fewer dependencies
=end
