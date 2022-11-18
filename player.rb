class Player
  attr_reader :name, :health
  def initialize(name, health=50)
    @name = name.reverse.capitalize
    @health = health    
  end

  def strong?
    @health >= 150
  end
  
  def status
    if strong?
      "Is so strong!"
    else
      "Is not that strong!"
    end
  end

  def health_down
    @health -= 1
  end

  def health_up
    @health += 1
  end
  
  def to_s
    "#{@name} has a health of #{@health}"
  end

end
if __FILE__ == $0
  player6 = Player.new("ricardo", 100)
  player6.health
  puts player6.name

  player6.health_down 
  puts player6.health   
end