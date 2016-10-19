# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次


def get_user_input
  begin 
    puts "please choose one of the following: R(石頭) / P(布)/ S(剪刀)"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input)
  user_input
end

def get_computer_input
  ["R","P","S"].shuffle!.last
end


def intro
	puts "|===============================================|" 
 	puts "|Welcome to Rock Paper Scissors!!!              |"
 	puts "|===============================================|"
end
def check_win(user_input, computer_input)
	if user_input == computer_input
		return "It's a draw."
	elsif user_input == "R"
		if computer_input == "S"
			return "You are win"  #use "return" , not "puts" 
		elsif computer_input == "P"
			return "You are lose"
		end
	elsif user_input == "P"
		if computer_input == "R"
			return "You are win"
		elsif computer_input == "S"
			return "You are lose"
		end
	elsif user_input == "S"
		if computer_input == "P"
			return "You are win"
		elsif computer_input == "R"
			return "You are lose"
		end
	end
end
def get_input_string(input)
	gestures = {
		"R" => "Rock",
		"P" => "paper",
	    "S" => "Scissors"
	}
	gestures[input]
end
def print_result(user_input, get_computer_input, message)
	puts "You choose #{get_input_string(user_input)}, computer chooses #{get_input_string(get_computer_input)}, #{message}!"
end

def continue?
	begin
		puts "Play Again?: Y /N"
		continue = gets.chomp.upcase
	end while !["Y", "N"].include?(continue)
	continue
end

def goodbye
  puts "|===============================================|"
  puts "|       Good Bye! Thanks for playing!           |"
  puts "|           Rock Paper Scissors!!!              |"
  puts "|           by Roger Chen 2016                  |"
  puts "|===============================================|"
end

intro()
begin
	user_input = get_user_input()
	computer_input = get_computer_input
	message = check_win(user_input, computer_input)
	print_result(user_input, computer_input, message)
	continue = continue?
end while continue == "Y"
goodbye()