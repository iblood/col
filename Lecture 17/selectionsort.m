function[out,swap,time] = selectionsort(a)
t_s = tic;
tic
[m n] = size(a);
if m == 1
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
end
t_s_ = toc;
time = t_s_ - t_s;
toc
end