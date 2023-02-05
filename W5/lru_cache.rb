class LRUCache
    attr_reader :storage,:max_storage
    def initialize(max_storage)
        @storage = [] 
        @max_storage = max_storage 
    end

    def count
      # returns number of elements currently in cache
      @storage.length 
    end

    def add(el)
      # adds element to cache according to LRU principle
      if storage.include?(el)
        @storage.delete(el)
        @storage << el 
        return
      end 
        if self.count == @max_storage 
            storage.shift 
            storage.push(el)
        else  
            storage.push(el)
        end 
    end

    def show
      # shows the items in the cache, with the LRU item first
        print storage 
    end

    private
    # helper methods go here!

  end