class Stack
    attr_reader :stack, :limit

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        raise 'Stack Overflow' if full?
        @stack << value
    end

    def size
        @stack.length
    end

    def empty?
        @stack.empty?
    end

    def full?
        @limit == @stack.size
    end

    def pop
        @stack.pop
    end 

    def peek
        @stack.last
    end

    def search(value)
        @stack.each_with_index do |e, i|
            if e == value 
                return size - i - 1
            end
        end
        -1
    end

end