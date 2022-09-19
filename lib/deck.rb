require_relative 'card'

class Deck
    def initialize
        @deck = []
        colors = Array["Red", "Green", "Blue"]
        shapes = Array["Oval", "Diamond", "Squiggle"]
        patterns = Array["Open", "Striped", "Solid"]
        numbers = Array["1", "2", "3"]
        count = 0
        colors.each do |i|
            shapes.each do |j|
                patterns.each do |k|
                    numbers.each do |x|
                        @deck[count] = Card.new(i, j, k, x)
                        count+=1
                    end
                end
            end
        end
    end
end
                       
                
            
        
    
