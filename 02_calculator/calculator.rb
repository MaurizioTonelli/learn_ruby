def add a, b
    a+b
end

def subtract a, b
    a-b
end

def sum array
    sum = 0
    array.each do |number|
        sum+=number
    end
    sum
end

def multiply array
    sum = 1
    array.each do |number|
        sum*=number
    end
    sum
end

def pow a, b
    a**b
end

def factorial n
    result = 1
    while(n>0)
        result*=n
        n-=1
    end
    result
end