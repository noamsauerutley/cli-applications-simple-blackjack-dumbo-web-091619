def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..1)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts("Type 'h' to hit or 's' to stay")
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

def hit?(total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input !="s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    total += deal_card
  end
  total
end



#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  # code runner here
  welcome
  total = initial_round
  while total <= 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
