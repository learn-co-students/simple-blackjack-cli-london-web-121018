def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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
  return gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  draw = 0
    2.times do
      draw += deal_card
    end
    display_card_total(draw)
    return draw
end

def hit?(draw)
  # code hit? here
  usr = ""
  prompt_user
  usr = get_user_input

  if usr == "h"
    draw += deal_card
  end
  return draw
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  cardsum = 0

  welcome
  cardsum = initial_round
  until cardsum > 21

    cardsum = hit?(cardsum)
    display_card_total(cardsum)
  end
end_game(cardsum)



end
