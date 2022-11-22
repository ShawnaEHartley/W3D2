require_relative "Card.rb"

# 4x4 board

class Board

    attr_reader :board

    def initialize
        @board = Array.new(4) {Array.new(4)}
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, card)
        row, col = pos
        @board[row][col] = card
    end

    def empty?(pos)
        self[pos] == nil
    end

    def any_empty?
        @board.flatten.any? {|ele| ele == nil}
    end
        
    def populate
        face_values = [:L, :O, :P, :G, :H, :I, :W, :Y, :L, :O, :P, :G, :H, :I, :W, :Y]  
        @board.each.with_index do |row, rowIdx|
            row.each.with_index do |ele, colIdx|
                pos = [rowIdx, colIdx]
                idx = rand(0...face_values.length)
                new_card = Card.new(face_values[idx])
                self.[]=(pos, new_card)
                face_values.delete_at(idx)
            end    
        end
    end 
    
    def render
        @board.each do |row|
            row.each do |card|
                print card.face_value
            end
            print "\n"
        end
    end

end


board = Board.new
# p board.empty?([2,2])
# p board.empty?([0,2])
# board.[]=([0, 2], Card.new(:U))
board.populate
# p board.empty?([0, 2])
# p board.board[0][2]
board.render


