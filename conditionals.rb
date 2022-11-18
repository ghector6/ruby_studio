require_relative 'player'

player = Player.new("JoseJuan", 150)

=begin
if player.health >= 150 
  puts "He is so powerful !!"
end
=end

#puts "He is so powerful" if player.health >= 150

if player.health >= 150 
  puts "Powerful"
else 
  puts "Easy"
end