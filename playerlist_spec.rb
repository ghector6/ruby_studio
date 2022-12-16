require_relative "playerlist"

describe Playerlist do
	before do 
		@playerlist = Playerlist.new("Hector")		
	end

	context "being played with one player" do 
		before do
			@initial_health = 150
			@player = Player.new("Hector", @initial_health)
			@playerlist.add_player(@player)
		end
		it "gives the health a +1 if high number is rolled" do
			@playerlist.stub(:roll_die).and_return(5)
			@playerlist.start_game
			expect(@player.health).to eq(@initial_health + 1)
		end
		it "Does nothing if a medium number is rolled" do 
			@playerlist.stub(:roll_die).and_return(3)
			@playerlist.start_game
			expect(@player.health).to eq(@initial_health)
		end
		it "Gives the health a -1 if low number is rolled " do 
			@playerlist.stub(:roll_die).and_return(1)
			@playerlist.start_game
			expect(@player.health).to eq(@initial_health - 1)
		end
	end
end