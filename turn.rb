class Turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    puts '----- NEW TURN -----'
  end

  def end_game(player)
    puts "#{player.name} wins with #{player.lives} lives remaining! The greatest!"
    sleep(1)
    puts "----- GAME OVER -----"
    puts "BYEEEEE"
    exit
  end

  def get_score(lives1, lives2)
    if lives1 == 0
      end_game(@player2)
    elsif lives2 == 0
      end_game(@player1)
    else
      puts "P1: #{lives1}/3 vs P2: #{lives2}/3"
    end
  end

end

