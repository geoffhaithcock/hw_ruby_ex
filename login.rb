class Login
    
    def initialize(login, pw)
        @login = login
        @pw = pw
    end
    
    def username
        puts "Enter your username. "
        username = gets.chomp.downcase.to_s
        if username == @login
            puts "Please enter your password. "
            password = gets.chomp.downcase.to_s
            if password == @pw
                puts "Access Granted. "
            else 
                puts "Incorrect Password. "
            end
        else
            puts "Unrecognized Login. "
        end
    end
end

my_login = Login.new("geoff", "dog")

puts my_login.username