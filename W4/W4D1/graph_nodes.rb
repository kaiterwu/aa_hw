class GraphNode 
    def initialize(value)
        @value = value 
        @neighbors = []
    end 
    def neighbors 
        @neighbors 
    end 

    def value 
        @value 
    end 
    
    def neighbors= (neighbor)
        @neighbors.concat(neighbor)
    end 

    
end 

def bfs(starting_node,target_value)
    queue = [starting_node]
    visited = [] 
    while !queue.empty? 

    first = queue.shift 
        return first.value if first.value == target_value 
        visited << first 
        first.neighbors.each do |ele| 
            queue << ele if !visited.include?(ele)
        end 
    end 
    return nil 
end 