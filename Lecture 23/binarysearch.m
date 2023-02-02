function[out] = binarysearch(a,num,start,end)
len = end - start +1;
n = length(a);
if len == n
    if length(a) == 2;
        if a(1) <= num && a(2) >= num
            out = 1;
        else
            out = 0;
        end
    elseif length(a) == 3
    else
        cut = floor(length(a)/2);
        out_1 = binarysearch(a(1:cut),num);
        out_2 = binarysearch(a(cut+1:length(a)),num);
        if out_1 == 1 || out_2 == 1
            out = 1;
        else
            out = 0;
        end
    end

end