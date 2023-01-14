function[y] = mergesort(x)

    if length(x) == 1
        y = x;
    else
        m = floor(length(x)/2);
        yl = mergesort(x(1:m));
        yr = mergesort(x(m+1:length(x)));
        y = merge(yl,yr);
    end
    
end