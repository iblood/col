function[] = testbubble()

size = [10 50 100 300 500 1000 2000 5000 10000];
len = length(size);
time = zeros(1,len);
swap = zeros(1,len);
    for i = 1:len
        [array swaps comparisions times] = myBubbleSort(randi(size(i)*10,1,size(i)));
        time(i) = times;
        swap(i) = swaps;
    end

    plot(swap,time);
end