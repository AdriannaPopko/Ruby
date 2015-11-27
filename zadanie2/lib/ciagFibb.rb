#ciąg Fibonacciego

def fib(n)
    a, b = 0, 1
    for i in 0..n
        a, b = b, a+b
    end
    return a
end

puts fib(3)
