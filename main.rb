require './player'

puts 'Please enter name for Player 1'
player1 = Player.new(gets.chomp)
puts 'Please enter name for Player 2'
player2 = Player.new(gets.chomp)
puts player1.score
player1.score += 1
puts player1.score