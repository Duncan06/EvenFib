# Even number sum of fibonacci sequence less than 4 million.

@cache = [0, 1]

def fibonacci target
    return @cache[target] if @cache[target]

    @cache[target] = fibonacci(target-1) + fibonacci(target-2)
end

def gather target
    numbers = []
    result = 0
    start = 0
    while start < target
        result = fibonacci start
        numbers << result
        start += 1
    end
    numbers
end

numberset = gather(34)

def findevens set
    result = []
    set.each do |number|
        if number % 2 == 0
            result << number
        end
    end
    result
end

final = findevens numberset
puts final.inject(0){|sum, x| sum + x}




