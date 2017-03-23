class Vehicle
    
    def initialize(color, size, mpg)
        @color = color
        @size = size
        @mpg = mpg
    end
    
    def color
        @color
    end
    
    def size
        @size
    end
    
    def mpg
        @mpg
    end
    
    def slow
        @mpg += 5
    end
end

my_car = Vehicle.new("black", "large", 45)

puts "My #{my_car.color} car is #{my_car.size} but it gets #{my_car.mpg} mpg most of the time. "
puts "If I'm going below 60 mph on flat roads, I can even average over #{my_car.slow} mpg! "