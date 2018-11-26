
require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  deck = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 11]
  deck.sample
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(total)
  # code hit? here
  prompt_user
  action = get_user_input()

  if action == "s"
    total
  elsif action == "h"
    total += deal_card
  else
    invalid_command()
  end

  total
end

def invalid_command
  # code invalid_command here
  puts "I don't know what you mean. Try again."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round()

  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)

end
