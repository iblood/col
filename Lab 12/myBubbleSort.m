function[sorted_array,swap,comparisons,time] = myBubbleSort(a)
tic()
[m n]= size(a);
if m == 1
    swap = 0;
    comparisions = 0;
    for i = 1:n
        for j = 1:n-i
            comparisions = comparisions + 1;
            if a(j)>a(j+1)
                temp = a(j);
                a(j) = a(j+1);
                a(j+1) = temp;
                swap = swap + 1;
            end
        end
    end
    sorted_array = a;
end
time = toc();
end