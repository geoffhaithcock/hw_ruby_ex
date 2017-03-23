puts "What are you? "
answer = gets.chomp.downcase
    until answer == "I'm a dummy".chomp.downcase
        puts "What are you?"
        answer = gets.chomp.downcase
    end
    puts "Correct."