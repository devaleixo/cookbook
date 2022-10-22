class Ester_egg
  def black_jack
    def pick_bank_score
      return Random.rand(16...21)
    end

    def pick_player_card
      return Random.rand(1...11)
    end

    def state_of_the_game(player_score, bank_score)
      return "The player's score is: #{player_score}. The bank's score is: #{bank_score}"
    end
    def end_game_message(player_score, bank_score)
        if (player_score > 21) || (player_score < bank_score)
          return "you lost"
        elsif player_score == 21
          return "Black Jack!"
        elsif player_score == bank_score
          return "Push"
        elsif player_score > bank_score
          return "you won"
        end
    end
    player_score = pick_player_card
    bank_score = pick_bank_score
    puts state_of_the_game(player_score, bank_score)
    puts "do you want another card?"
    answer = gets.chomp

    if answer == "yes"
      while player_score
        if answer == "yes"
          player_score += Random.rand(1...11)
          puts state_of_the_game(player_score, bank_score)
          puts "do you want another card?"
          answer = gets.chomp
        elsif answer == "no"
          puts end_game_message(player_score, bank_score)
          break
        end
      end
    elsif answer == "no"
      puts end_game_message(player_score, bank_score)
    end
end
end
