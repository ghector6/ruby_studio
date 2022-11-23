require_relative 'player'
  
class Playerlist
  def initialize(user_name)
    @user_name = user_name
    @users = []
  end
  def add_player(player)
    @users << player
  end
  def start_game(number_rolled)
    puts "#{@user_name}'s favorite players:"
    puts @users
    @users.each do |user|
      if number_rolled < 5
        puts "#{user.name} The attack missed and: \n #{user} "
      else
        user.health_up
        puts "After receiving a physicall attack:\n #{user}"
      end
        
    end
  end
end