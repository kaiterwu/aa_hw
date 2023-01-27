class Map 
    def initialize
        @storage = []
    end 

    def set(key,value)
        if @storage.empty?
             @storage << [key,value]
        elsif @storage.any?{|pairs| key == pairs[0]}
            
            
        else  
            @storage << [key,value]
        end
            
    end 

    def get(key)
        @storage.each{|pairs|return pairs[-1] if key == pairs[0]}
    end 

    def delete(key)
        @storage.each{|pairs|@storage.delete(pairs) if pairs[0] == key }
    end 

    def show 
        print @storage 
    end 
end 