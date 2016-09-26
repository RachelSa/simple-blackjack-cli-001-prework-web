def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first  = deal_card
	second = deal_card
	card_total = first + second
  	display_card_total(card_total)
    return card_total
end

def hit?(card_total)
  prompt_user
  response = get_user_input
  if response == "h"
    card_total += deal_card
    return card_total
  elsif response == "s"
  	return card_total
  else
    invalid_command
    prompt_user
    end
end

def invalid_command
  puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  	temp = hit?(total)
  	total = temp
  	display_card_total(total)

  end
  end_game(total)

end
