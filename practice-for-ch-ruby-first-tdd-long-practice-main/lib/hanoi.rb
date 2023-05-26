class HanoiTowers

    attr_reader :towers, :moves

    def initialize

        @towers = Array.new(3) {Array.new(3)}

        @moves = 0

    end 

    def fill 

        @towers[0] = [5,4,3,2,1]

    end 

    def move(start, end)



    end 


end