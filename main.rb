require './player'
require './question'
require './turn'

puts 'Please enter name for Player 1'
player1 = Player.new(gets.chomp)
puts 'Please enter name for Player 2'
player2 = Player.new(gets.chomp)
puts 'Let\'s begin!'
sleep(1)
current_player = player1
while player1.lives > 0 || player2.lives > 0
  #player1 turn
  turn = Turn.new(player1, player2)
  question = Question.new
  puts "Question for #{current_player.name}: #{question.question}"
  if gets.chomp.to_i == question.answer
    puts 'Correct! Nice math.'
  else
    current_player.lives -= 1
    puts 'WRONG! TRY HARDER!'
    sleep(1)
  end
  turn.get_score(player1.lives, player2.lives)
  if current_player == player1
    current_player = player2
  elsif current_player == player2
    current_player = player1
  end
  sleep(1)
end
