function[out,swap,out_1,swap_1,out_2,swap_2] = mega_sort(a)
store = a;
[m n] = size(a);
if m == 1
    %selectionsort begin
    tic
    swap = 0;
    for i = 1:n-1
        min = i;
        for j = i+1:n
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
    toc
    %selectionsort end
    a = store;
    %insertionsort begins
    tic
    swap_1 = 0;
    for i = 2:n
        temp = a(i);
        j = i-1;
        while j>0 && a(j) >= temp
            a(j+1) = a(j);
            j = j-1;
        end

        if j ~= i-1
            a(j+1) = temp;
            swap_1 = swap_1 + 1;
        end
    end
    out_1 = a;
    toc
    %insertionsort ends
    a = store;
    %bubble sort begins
    tic
    swap_2 = 0;
    for i = 1:n
        for j = 1:n-i
            if a(j)>a(j+1)
                temp = a(j);
                a(j) = a(j+1);
                a(j+1) = temp;
                swap_2 = swap_2 + 1;
            end
        end
    end
    out_2 = a;
    toc
    %bubblesort ends
end


toc
end