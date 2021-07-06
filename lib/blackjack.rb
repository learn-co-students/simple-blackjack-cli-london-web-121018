def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
 gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
  
end

def hit?(card_total)
    # code hit? here      # # code hit? here
    prompt_user
    case get_user_input
        when 's'
        card_total
        when 'h'
        card_total += deal_card
        else
        invalid_command
    end
    
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
  total = initial_round
  while total < 21
  total = hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
    
