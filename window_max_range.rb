def windowed_max_range(array, window_size)
    current_max_range = 0
    # arr = []

    array.each_with_index do |num, idx|
        current_sum_1 = array.slice(idx, window_size).max
        current_sum_2 = array.slice(idx, window_size).min
        sum = current_sum_1 - current_sum_2
        # p arr = array.slice(idx, window_size)

        if sum > current_max_range
            current_max_range = sum
        end
    end

    current_max_range
    # arr
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #== 6 # 3, 2, 5, 4, 8


class MyQueue
    def initialize
      @store = []
    end

    def peek
        @store[-1]
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end

    def enqueue(ele)
        @store << ele
    end

    def dequeue
        @store.shift
    end
end

class MyStack
    def initialize
      @store = []
    end

    def peek
        @store[-1]
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end

    def push(ele)
        @store << ele
    end

    def pop
        @store.pop
    end
end

class StackQueue < MyStack
    def initialize
        super
    end

    def size
    end

    def empty?
    end

    def push

    end

    def pop
    end
end