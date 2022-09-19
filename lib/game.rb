require_relative 'player_creator'
require_relative 'board'
require_relative 'deck'
class Game

    def initialize
        @player_creator = PlayerCreator.new
        @board = Board.new
        @deck = Deck.new

    end

    def add_players
        @players = @player_creator.get_players
        puts "Welcome #{@players.join(' and ')}"
    end

    def choose_set(player)
        puts "Enter 3 cards which you believe to be a set"
        puts "#{player}: "

        cards = gets.chomp.split(" ")
        return cards
    end

    def is_set(set)
        card1 = set[0]
        card2 = set[0]
        card3 = set[0]
        count = 0
        if card1.shape == card2.shape && card2.shape == card3.shape
            count += 1
        elsif card1.shape != card2.shape && card2.shape != card3.shape && card1.shape != card3.shape
            count += 1
        end

        if card1.pattern == card2.pattern && card2.pattern == card3.pattern
                count += 1
        elsif card1.pattern != card2.pattern && card2.pattern != card3.pattern && card1.pattern != card3.pattern
                count += 1
        end

        if card1.color == card2.color && card2.color == card3.color
            count += 1
        elsif card1.color != card2.color && card2.color != card3.color && card1.color != card3.color
            count += 1
        end

        if card1.number == card2.number && card2.number == card3.number
            count += 1
        elsif card1.number != card2.number && card2.number != card3.number && card1.number!= card3.number
            count += 1
        end 

        if count == 4
            return true
        end
        return false

    end

    def start
        @board.display_cards(@deck)

    end

  

end