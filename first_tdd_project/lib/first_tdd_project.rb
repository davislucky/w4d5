class Array
    def my_uniq
        arr = []
        self.each do |el|
            next if arr.include?(el)
            arr << el
        end
        arr
    end

    def two_sum
        arr = []
        self.each.with_index do |val1, idx1|
            self.each.with_index do |val2, idx2|
                arr << [idx1, idx2] if idx2 > idx1 && val1 + val2 == 0
            end
        end
        arr
    end

    def my_transpose
        arr = Array.new(self.length) { Array.new }
        
        (0...self.length).each do |row|
            (0...self.length).each do |col|
                arr[row] << self[col][row]
            end
        end
        arr
    end

    def stock_picker
        arr = []
        max = 0

        self.each.with_index do |val1, idx1|
            self.each.with_index do |val2, idx2|
                if idx2 > idx1 
                    sum = val2 - val1
                    if sum > max
                        max = sum
                        arr << [idx1, idx2]
                    end
                end
            end
        end
        arr.last
    end
end