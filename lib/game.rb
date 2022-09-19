require_relative 'player_creator'
require_relative 'deck'
class Game

    def initialize
        @player_creator = PlayerCreator.new
    end

    def add_players
        @players = @player_creator.get_players
        puts "Welcome #{@players.join(' and ')}"
    end

    def start
    end

    def deal_card(deck)
        card = deck.shuffle.first
        deck = deck - [card]
        return card

end