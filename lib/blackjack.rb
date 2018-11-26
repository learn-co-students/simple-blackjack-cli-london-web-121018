def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  randomNumber = rand(1..11)
end

def display_card_total(total_cards)

  puts "Your cards add up to #{total_cards}"
  return total_cards
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  letter = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initOne = deal_card()
  initTwo = deal_card()
  sumInit = initOne + initTwo
  display_card_total(sumInit)

end

def hit?(myNumber)
  prompt_user()
  result = get_user_input()
  card_total = myNumber
    if result == 's'
      return myNumber
    elsif result == 'h'
      sumInit = myNumber + deal_card()
      return sumInit
    else
      invalid_command()
    end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome()
 number = initial_round()
  until number > 21
   hit?(number)
   display_card_total(number)
  number += hit?(number)
  end
  end_game(number)
end
