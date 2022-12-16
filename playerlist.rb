require_relative 'player'
  
class Playerlist
  def initialize(user_name)
    @user_name = user_name
    @users = []
  end
  def add_player(player)
    @users << player
  end
  def roll_die
    rand(1..6)
  end
  def start_game
    number_rolled = roll_die
    puts "#{@user_name}'s favorite players:"
    puts @users
    @users.each do |user|
      if number_rolled < 3
        user.health_down
        puts "After receiving a magical attack:\n #{user}"
      elsif number_rolled < 5
        puts "#{user.name} The attack missed and: \n #{user} "
      else
        user.health_up
        puts "After receiving a potion attack:\n #{user}"
      end
        
    end
  end
end