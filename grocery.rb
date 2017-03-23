class Groceries
    
    def initialize
        puts "Hi.  I'm interested in getting some things.  The amounts will depend on the prices."
        @two = 2
        @five = 5
        @ten = 10
        @bill = 0
    end
    
    def salmon
        puts "How much per pound is the wild salmon?"
        @fish = gets.chomp.to_i
            if @fish <= 5
                puts "Wow, I'll take #{@ten} pounds of that.  $#{@fish} is a great price."
                @bill += (@ten * @fish)
            elsif @fish > 5 && @fish <= 10
                puts "$#{@fish} is a good price. I'll take #{@five} pounds please."
                @bill += (@five * @fish)
            elsif @fish > 10 && @fish <= 13
                puts "I guess I'll take #{@two} pounds. $#{@fish} isn't the best deal."
                @bill += (@two * @fish)
            elsif @fish > 13
                puts "I'll pass. $#{@fish} is too much for me."
            end
            if @bill > 0
                puts "So I'm at $#{@bill} for the salmon."
            end
    end

    def walnuts
        puts "How much per pound are the black walnuts?"
        @nuts = gets.chomp.to_i
            if @nuts <= 5
                puts "Wow, I'll take #{@ten} pounds of that.  $#{@nuts} is a great price."
                @bill += (@ten * @nuts)
            elsif @nuts > 5 && @nuts <= 10
                puts "$#{@nuts} is a good price.  I'll take #{@five} pounds please."
                @bill += (@five * @nuts)
            elsif @nuts > 10 && @nuts <= 13
                puts "I guess I'll take #{@two} pounds. $#{@nuts} isn't the best deal."
                @bill += (@two * @nuts)
            elsif @nuts > 13
                puts "I'll pass. $#{@nuts} is too much for me."
            end
            if @bill > 0
                puts "So I'm at $#{@bill} total so far."
            end
    end
        
    def pasta 
        puts "How much per pound is the fresh pasta?"
        @pasta = gets.chomp.to_i
            if @pasta <= 3
                puts "Wow, I'll take #{@ten} pounds of that.  $#{@pasta} is a great price."
                @bill += (@ten * @pasta)
            elsif @pasta > 3 && @pasta <= 6
                puts "$#{@pasta} is a good price.  I'll take #{@five} pounds please."
                @bill += (@five * @pasta)
            elsif @pasta > 6 && @pasta <= 9
                puts "I guess I'll take #{@two} pounds. $#{@pasta} isn't the best deal."
                @bill += (@two * @pasta)
            elsif @pasta > 9
                puts "I'll pass. $#{@pasta} is too much for me."
            end
            if @bill > 0
                puts "So I'm at $#{@bill} total so far."
            end
    end
    
    def chocolate    
        puts "How much is that beautiful chocolate cake?"
        @cake = gets.chomp.to_i
            if @cake <= 10
                puts "Wow, I'll take it.  $#{@cake} is a great price."
                @bill += @cake
            elsif @cake > 10 && @cake <= 15
                puts "$#{@cake} is a good price.  I'll take it."
                @bill += @cake
            elsif @cake > 15
                puts "I'll pass. $#{@cake} is too much for me."
            end
            if @bill > 0
                puts "So now I'm at $#{@bill} total."
            end
    end
        
    def checkout
        puts "Thank you.  I feel that $#{@bill} was a fair price for us both."
        puts "Have a nice day!"
    end

    def main
        salmon
        walnuts
        pasta
        chocolate
        checkout
    end
end

dinner = Groceries.new

dinner.main