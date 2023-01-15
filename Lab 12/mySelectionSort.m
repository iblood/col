function[out,swap,comparisions,time] = mySelectionSort(a)
tic()
[m n] = size(a);
if m == 1
    swap = 0;
    comparisions = 0;
    for i = 1:n-1
        min = i;
        for j = i+1:n
            comparisions = comparisions + 1;
            if a(j)<a(min)
                min = j;
            end
        end
        if min ~=i
            temp = a(i);
            a(i) = a(min);
            a(min) = temp;
            swap = swap + 1;
        end
    end
    out = a;
end
time = toc();
end