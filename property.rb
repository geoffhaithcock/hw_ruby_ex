class Property
    
    def initialize
        puts "I hear you are in the market for a property around here.\n I think we can give you a cost estimate. "
    end
        
    def acres   
        puts "\nEnter in the number of acres the ideal lot would be."
            @acreage = gets.chomp.to_i
            if @acreage < 1
                puts "I'm sorry. Please enter one acre minimum."
                acres
            elsif @acreage >= 1
                @property_acre = 20000 + (10000 * @acreage)
                puts "\nThe cost for a #{@acreage} acre lot is about $#{@property_acre}.\n"
            end
    end
    
    def footage
        puts "\nHow many square feet were you thinking?"
            @sq_ft = gets.chomp.to_i
            if @sq_ft < 300
                puts "I'm sorry. The smallest house I've seen is 300 square feet. Enter a number larger than that.\n"
                footage
            elsif @sq_ft >= 300
                @house_sq_ft = (@sq_ft * 90)
                puts "\nThe basic cost for a #{@sq_ft} square foot house is about $#{@house_sq_ft}.\n"
            end
    end    
       
    def beds    
        puts "\nHow many bedrooms?"
            @bed = gets.chomp.to_i
            if @bed < 1
                puts "We don't have houses without bedrooms.\n"
                beds
            elsif @bed >= 1
                @bedrooms = (@bed * 10000)
                puts "\nGenerally, #{@bed} bedrooms will add $#{@bedrooms} to the cost.\n"
            end
    end
    
    def baths
        puts "\nHow many bathrooms?"
            @br = gets.chomp.to_i
            if @br < 1
                puts "Every house around here has a bathroom.\n"                   
                baths
            elsif @br >= 1          
                @bathrooms = (@br * 15000)
                puts "\n#{@br} bathrooms can increase the total cost by $#{@bathrooms}.\n"
            end
    end
    
    def assessment
        @assessment = @property_acre + @house_sq_ft + @bedrooms + @bathrooms
        puts "\nYou can expect to pay in the ballpark of $#{@assessment} for a property like that around here. "
    end
    
    def main
        acres
        footage
        beds
        baths
        assessment
    end
end

valuation = Property.new

valuation.main
