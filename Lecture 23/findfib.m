function[pos] = findfib(num)

    fib_cont = zeros(1,1000);
    fib_cont(1) = fib_cont(2) = 1;
    i = 1;
    while fib_cont(i) < num
        i = i*2;
    end
    if fib_cont(i) == num
        %returning the positon
        pos = i;
    else
        %implementing binary search
       
    end
end