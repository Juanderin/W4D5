class Array 

    def my_uniq

       hash = Hash.new()

       self.each {|ele| hash[ele] = true }

       hash.keys 


    end 


    def two_sum 

        arr = []

        self.each.with_index do |ele1, idx1|
            self.each.with_index do |ele2, idx2|
                if ele1 + ele2 == 0 && idx2 > idx1
                    arr << [idx1, idx2]
                end 
            end 
        end 

        arr 


    end 


    def my_transpose
        arr = Array.new(self.length) { Array.new(self.length) }

        (0...self.length).each do |row|
            (0...self.length).each do |col|
                arr[row][col] = self[col][row]
            end
        end

        arr
    end

    def stock_prices
        profit = 0
        min_idx = 0
        max_idx = 0

        self.each_with_index do |ele, i|
            end_idx = self.length - 1
            
            while end_idx > i
                if self[end_idx] - self[i] > profit
                    profit = self[end_idx] - self[i]
                    min_idx = i
                    max_idx = end_idx
                end
                end_idx -= 1
            end
        end

        [min_idx, max_idx]
    end


end 


[1, 2, 1, 3, 3].uniq # => [1, 2, 3]
[-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]

