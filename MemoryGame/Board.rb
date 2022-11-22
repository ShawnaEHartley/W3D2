require_relative "Card.rb"

# 4x4 board

class Board

    def self.populate
        cards = [:L, :O, :P, :G, :H, :I, :W, :Y, :L, :O, :P, :G, :H, :I, :W, :Y]  
        cards.each do |card|
            row = rand(0...4)
            col = rand(0...4)
            pos = [row, col]
            self[pos] = card
        end
    end


    def initialize
        @board = Array.new(4) {Array.new(4, '_')}
    end


end