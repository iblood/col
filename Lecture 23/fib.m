function[pos] = fib(num)

    fib_cont = zeros(1,1000);
    fib_cont(1) = fib_cont(2) = 1;
    for i = 3:1000
        fib_cont(i) = fib_cont(i-1) + fib_cont(i-2);
    end
    i = 1;
    while fib_cont(i) < num && i <= 1000
        i = i+1;
    end
    pos = i;
end