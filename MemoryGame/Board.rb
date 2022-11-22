require_relative "Card.rb"

# 4x4 board

class Board

    def initialize
        @board = Array.new(4) {Array.new(4)}
    end

    def [](pos)
        @board[pos[0]][pos[1]]
    end

    def []=(pos, card)
        @board[pos[0]][pos[1]] = card
    end

    def empty?(pos)
        @board[pos[0]][pos[1]] == nil
    end

    def any_empty?
        @board.flatten.any? {|ele| ele == nil}
    end
        
    def populate
        face_values = [:L, :O, :P, :G, :H, :I, :W, :Y, :L, :O, :P, :G, :H, :I, :W, :Y]  
        while any_empty?
            face_values.each_with_index do |value, i|
                new_card = Card.new(value)
                row = rand(0...4)
                col = rand(0...4)
                pos = [row, col]
                if empty?(pos)
                    self.[]=(pos, new_card)
                end
            end
        end
    end
    
end

board = Board.new
# p board.empty?([2,2])
board.populate
p board