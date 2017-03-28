require_relative "card"
require_relative "deck"
require_relative "hand"
require 'pry'


deck=Deck.new
player_cards=deck.cards.pop(2)

# cards_with_ace= ['A♥','4♥']
# player_with_ace= Hand.new(cards_with_ace)
# binding.pry
player = Hand.new(player_cards)
  puts "player was dealt #{player_cards[0]}"
  puts "player was dealt #{player_cards[1]}"
  puts "player score: #{player.calculate_hand_total}"
  puts " "
dealer_cards=deck.cards.pop(2)
dealer = Hand.new(dealer_cards)
  puts "dealer was dealt #{player_cards[0]}"
  puts "dealer was dealt #{player_cards[1]}"
  puts "dealer score: #{dealer.calculate_hand_total}"
  puts ""


# write code for user input here

status = ''
  # if player_with_ace.cards.include?('A')
  #   binding.pry
  # else
    while status != 's' && player.calculate_hand_total < 21 do
      puts "Your current total is #{player.calculate_hand_total}"
      puts 'Would you like to hit or stand? [H/S]'
      input= gets.chomp
        if input== 'h'
          player.cards << deck.hit
          puts ' '
          puts "player was dealt #{player.cards[-1]}"
        end
      status = input.downcase
      # binding.pry
    end
  # end
  # write the player status
  puts ''
  if player.calculate_hand_total > 21
    puts "Player score is #{player.calculate_hand_total}. You Busted!"
  elsif player.calculate_hand_total == 21
    puts 'Black Jack!'
  else
    puts "Player Score is #{player.calculate_hand_total}"
  end

  # if player.calculate_hand_total > 21
  #   player.status =='busted'
  # end

  puts ''
  #write logic for dealer
  if player.calculate_hand_total <= 21
    while dealer.calculate_hand_total < 17
      dealer.cards << deck.hit
      puts "Dealer deals himself #{dealer.cards[-1]}"
    end
    puts "Dealer Score is #{dealer.calculate_hand_total}"

      if dealer.calculate_hand_total > 21
        puts "Dealer has busted, player wins!"
      else
        #compare dealer hand with player hand
        puts ''
          if player.calculate_hand_total == dealer.calculate_hand_total
            puts "It's a tie!"
          elsif player.calculate_hand_total > dealer.calculate_hand_total
            puts "Player wins!"
          else
            puts "Dealer wins!"
          end
      end
  else
    puts 'Player has busted, dealer wins!'
  end
