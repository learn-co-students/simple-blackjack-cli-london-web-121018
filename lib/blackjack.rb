def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  cards = deal_card + deal_card
  display_card_total(cards)
  cards

end

def hit?(current_cards)

  prompt_user
  input = get_user_input

  if input == "s"
    current_cards
  elsif input == "h"
    current_cards + deal_card
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards_counter = initial_round

  until cards_counter > 21
    compare = hit?(cards_counter)
    compare == cards_counter ? display_card_total(cards_counter):display_card_total(compare)
    cards_counter = compare
  end
end_game(cards_counter)
end
