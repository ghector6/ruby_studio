require_relative 'player'

describe Player do
  
  before do
    @initial_health = 90
    @player = Player.new("hector", @initial_health)
  end    
    
  it "Has a capitalized firt letter and revere" do 
    expect(@player.name).to eq("Rotceh")    
  end
  
  it "Has health of 100"do
    expect(@player.health).to eq(90)
  end
  
  it "has a string representation" do
    expect(@player.to_s).to eq("Rotceh has a health of 90")
  end
    
  it "increases the health by 1" do
    expect(@player.health_up).to eq(91)
  end  
  
  it "decreases health by 1" do
    expect(@player.health_down).to eq(@initial_health = 89)
  end

  context "A player with health higher or equal than 150" do
    before do 
      @player = Player.new("JoseJuan", 150)
    end

    it "he is so poweful" do
      expect(@player.strong?).to eq(true)
    end
    it "is so powerful status" do
      expect(@player.status).to eq("Is so strong!")
    end
  end 
  context "A players health is less than 150 " do
    before do
      @player = Player.new("Carlo", 100)
    end
    it "he is not that powerful" do
      expect(@player.strong?).to eq(false)
    end 
  end  
end
