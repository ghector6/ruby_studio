require_relative 'player'
  
class Playerlist
  def initialize(user_name)
    @user_name = user_name
    @users = []
  end
  def add_player(player)
    @users << player
  end
  def start_game
    puts "#{@user_name}'s favorite players:"
    puts @users
    @users.each do |user|
      user.health_down
      puts "After receiving a physicall attack:\n #{user}"
    end
  end
end