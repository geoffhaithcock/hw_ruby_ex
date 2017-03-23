puts "What's your favorite color? "
color = gets.chomp.downcase
	if color == "blue" || color == "green"
		puts "Great choice! "
	else
		puts "Really? " + color.upcase + " is your favorite color?"
	end	

