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

class Tower
    attr_reader :player
    attr_accessor :store
    def initialize # (board)
        @store = [[1,2,3],[],[]]
        @player = Player.new
    end

    def move(pos) #Player.user_input
        var = @store[pos[0]].shift
        @store[pos[1]].unshift(var)
        @store
    end

    def play
        until won?
            response = @player.user_input
            move(response)
            self.print
        end
    end

    def won?
        store == [[],[],[1,2,3]]
    end

    def print
        @store.map do |row|
            puts row.join("_")
        end
    end
end

class Player
    def user_input
        puts "choose stack to take from and where to place"
        response = gets.chomp.split.map(&:to_i) # [0, 1]
    end
end