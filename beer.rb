number_bottles = 99

until number_bottles == 0
    case
    when number_bottles >= 3
        puts "#{number_bottles} bottles of beer on the wall, "
        puts "#{number_bottles} bottles of beer, "
        puts "Take one down, pass it around, "
        puts "#{number_bottles-1} bottles of beer on the wall.\n\n "
        number_bottles -= 1
        
    when number_bottles <= 2
        puts "#{number_bottles} bottles of beer on the wall, "
        puts "#{number_bottles} bottles of beer, "
        puts "Take one down, pass it around, "
        puts "#{number_bottles-1} bottle of beer on the wall.\n\n "
        number_bottles -= 1
        
        if number_bottles == 1
        puts "#{number_bottles} bottle of beer on the wall, "
        puts "#{number_bottles} bottle of beer, "
        puts "Take one down, pass it around, "
        puts "No more bottles of beer on the wall.\n "
        break
        end
    end  
end