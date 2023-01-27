class Queue
    def initialize 
        @line = []
    end
    def line 
        @line
    end

    def enqueue(el)
        @line.unshift(el)
    end 

    def dequeue 
        @line.pop 
    end 

    def peek
        @line[0]
    end 
end 