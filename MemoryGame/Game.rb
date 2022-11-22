require_relative "board.rb"
require_relative "card.rb"

# in play, call @board.populate

class Game

    def initialize
        @board = Board.new
        @prev_guess = nil
    end

    #play loop
    def render_hidden
        @board.each do |row|
            row.each do |card|
                if card.face_up
                    print card.face_value
                else
                    print "_"
                end
            end
            print "\n"
        end
    end


    def make_guess

    end

end

game1 = Game.new
game1.render_hidden