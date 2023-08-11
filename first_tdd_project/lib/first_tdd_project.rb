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

    end
end