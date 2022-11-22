class Card
    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    def face_value
        @face_value
    end

    def face_up
        @face_up
    end

    # def show_card
    #     if @face_up
    #         @face_value
    #     else
    #         return "face down"
    #     end
    # end

    def hide
        if @face_up
            @face_up = false
        end
    end

    def reveal
        if !@face_up
            @face_up = true
            p @face_value
        end
    end

    def to_s
        @face_value.to_s
    end

    def ==(another_card)
        return @face_value == another_card.face_value
    end
end

card1 = Card.new(:L)
card2 = Card.new(:O)
card3 = Card.new(:L)
card4 = Card.new(:O)

# p card1
card1.reveal

# card1.hide

# p card1 == card3
# p card1 == card2