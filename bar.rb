puts "Welcome to the bar. How old are you? "
age = gets.chomp.downcase.to_i
	case 
	when age >= 21 
		puts "What are you drinking? "
	when age <= 21
		x = (21 - age).to_s
		puts "You have " + x + " years to go! "
	end

