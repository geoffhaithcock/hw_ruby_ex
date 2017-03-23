puts "What time is it? In military time please... "
time = gets.chomp.to_s
	case 
	when time >= "0500" && time <= "1159"
		puts "Good Morning! "
	when time >= "1200" && time <= "1659"
		puts "Good Afternoon! "
	when time >= "1700" && time <= "2059"
		puts "Good Evening! "
	when time >= "2100" && time <= "2359"
		puts "Good Night! "
	when time >= "0001" && time <= "0459"
		puts "Good Night! "
	else 
		puts "Try again please..."
		
	end