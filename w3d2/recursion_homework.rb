def sum_to(n)
    return nil if n < 0 
    return 1 if n == 1 
    n + sum_to(n-1)
end 

def add_numbers(arr)
    return nil if arr.empty?
    return arr[0] if arr.length == 1 
    last = arr.pop 
    last + add_numbers(arr)
end 

def gamma_function(n)
    return nil if n == 0
    return 1 if n == 1 || n == 2 


    (n-1) * gamma_function(n-1)
end 

def ice_cream_shop(flavors,favorite)
    return false if flavors.empty?
    return true if flavors.pop == favorite 

    ice_cream_shop(flavors,favorite)
end 

def reverse(str)
    return str if str.length <= 1 
    str[-1] + reverse(str[0...-1])
end 