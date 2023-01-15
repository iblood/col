function[out_1,swap,comparisions,time] = myInsertSort(a)
tic()
[m n] = size(a);
if m == 1
    swap_1 = 0;
    comparisions = 0;
    for i = 2:n
        temp = a(i);
        j = i-1;
        while j>0 && a(j) >= temp
            a(j+1) = a(j);
            j = j-1;
            comparisions = comparisions +1;
        end

        if j ~= i-1
            a(j+1) = temp;
            swap_1 = swap_1 + 1;
        end
    end
    out_1 = a;
end
time = toc();
end