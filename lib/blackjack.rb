def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input 
   return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round 
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  user_input = 0
  user_input = get_user_input
  if user_input == "h"
    card_total += deal_card
    return card_total
  elsif user_input == "s"
    return card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  player_hand = 0
  welcome
  player_hand = initial_round
    while player_hand < 21
      player_hand = hit?(player_hand)
      display_card_total(player_hand)
    end
  end_game(player_hand)
end
    
