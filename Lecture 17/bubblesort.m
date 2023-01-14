function[out_2,swap_2] = bubblesort(a)
tic
[m n]= size(a);
if m == 1
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
end
toc
end