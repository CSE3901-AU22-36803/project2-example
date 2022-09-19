require_relative "deck"

class Board
    def initialize
        @board = []
    end

    def display_cards(deck)
        i = 0
        until i == 12
            card = deck.shuffle.first
            @board << card
            deck = deck - card
            puts "#{i}-#{card.shape}-#{card.pattern}-#{card.color}-#{card.number}-"
            i += 1
        end
    end
end

    