puts "Dad, can we go to Itchy and Scratchy Land??? Yes or No?"
x = gets.chomp.downcase
	until x == "yes".chomp || x == "y".chomp
		puts "Can we go to Itchy and Scratchy Land Dad?!!?"
		x = gets.chomp.downcase
	end
	puts "Sweet! Thanks Dad!!!!"