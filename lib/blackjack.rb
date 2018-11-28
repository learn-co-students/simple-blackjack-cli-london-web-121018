def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  newcard = rand(1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  input = gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
card1 = deal_card
card2 = deal_card
sumofcards = card1 + card2
display_card_total(sumofcards)
sumofcards
end

def hit? (sumofcards)
  prompt_user
  input = get_user_input
  if input == 's'
    sumofcards
  elsif input == 'h'
    newcard = deal_card
    sumofcards +=  newcard
  else
    invalid_command
  end    # code hit? here
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sumofcards = initial_round
  until sumofcards > 21 do
    sumofcards = hit?(sumofcards)
    display_card_total(sumofcards)
  end
  end_game(sumofcards)
end
