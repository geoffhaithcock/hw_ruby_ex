class Student
    
    def initialize(email, password)
        @email = email
        @password = password
    end

    def login
        puts "Please enter your email address: "
            address = gets.chomp.downcase
            if address == @email
                puts "Thank You #{@email}, please enter your password: "
                pw = gets.chomp.downcase
                if pw == @password
                    puts "Thank You #{@email.capitalize}, you may begin the test. "
                else puts "Sorry wrong password."
                    login
                end
            else puts "That email address is not recognized.  Please try again. "
                login
            end
    end
    
    
    def prompt
        puts "Answer Y or N to the following questions: "
    end
    
    def ask_questions
        @questions_answers = {'Is class held at HQ Raleigh?' => 'Y', 
                          'Is it usually 4 days per week?' => 'Y', 
                          'Do you have homework every day?' =>'Y',
                          'Are you a master developer yet?' => 'N',
                          'Is your instructor awesome?' => 'Y'}

        @score = 0
    
        @questions_answers.each do |question, correct_answer|
            puts "Q: #{question}"
            
            user_answer = gets.chomp.upcase
            
            if user_answer == 'Y' || user_answer == 'N'
                if user_answer == correct_answer
                    @score += 1
                    puts "That is correct! "
                elsif user_answer != correct_answer
                    puts "Sorry. That is incorrect. "
                end
            else
                puts "Try that again. Y or N?"
                redo
            end
        end
    end
    
    def put_score(s,q_a)
        puts "You got #{s} of #{q_a.count} questions correct.  That equals #{s*20}%."
            if s <= 2
                puts "I'm sorry. That is not a passing score. Please retake the test."
                ask_questions
                put_score(@score,@questions_answers)
            elsif s >= 3
                puts "Congratulations. You passed the test!"
            end
    end
    
    def main
      login
      prompt
      ask_questions
      put_score(@score,@questions_answers)
    end
    
end

stud = Student.new("peter", "butterbean")

stud.main