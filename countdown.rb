puts "Tell me a number between 1 and 10. "
x = gets.chomp.to_i
until x <= 0
	puts x -= 1
end
	puts "Done!"


