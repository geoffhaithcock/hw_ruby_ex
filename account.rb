class Account

    def initialize(name, balance, pin)
       @name = name
       @balance = balance
       @pin = pin
    end
  
    def display_balance
       puts "Enter your PIN number please. "
          pin_number = gets.chomp.to_i
          if pin_number == @pin
            puts "Your balance is $#{@balance}."
          else
            puts pin_error
          end
    end

    def withdraw
       puts "Enter your PIN number please. "
          pin_number = gets.chomp.to_i
          if pin_number == @pin
            puts "How much would you like to withdraw?"
            cash = gets.chomp.to_i
            @balance -= cash
            puts "You withdrew $#{cash}, and your new balance is $#{@balance}."
          else
          puts pin_error
          end
    end

    def deposit
       puts "Enter your PIN number please. "
          pin_number = gets.chomp.to_i
          if pin_number == @pin
            puts "How much would you like to deposit?"
            cash = gets.chomp.to_i
            @balance += cash
            puts "You deposited $#{cash}, and your new balance is $#{@balance}."
          else
            puts pin_error
          end
    end


    def pin_error
        puts "Access denied: Incorrect PIN."
    end


my_account = Account.new("geoff", 1000, 2222)

    puts "Hi. If you want to:
        See your balance, enter balance
        Withdraw money, enter withdraw 
        Deposit money, enter deposit"
        answer = gets.chomp.downcase
        if answer == "balance"
          puts my_account.display_balance
        elsif answer == "withdraw"
          puts my_account.withdraw
        elsif answer == "deposit"
          puts my_account.deposit
        else 
          puts "Start over. "
        end
end