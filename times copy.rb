puts "Are you famous?"
answer = gets.chomp.to_s.downcase
    if answer == "yes" || answer == "y"
        10.times do
        puts "OH MY GOD! "
        end
    else 
        3.times do
        puts "STRANGER DANGER! "
        end
    end