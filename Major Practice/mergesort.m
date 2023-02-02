function[out] = mergesort(a)
%merge sort with 3 divisions instead of 2
len = length(a);
if len == 1
    out = [a(1)];
elseif len ==2
    if a(2) > a(1)
        out = a;
    else
        out = [a(2) a(1)];
    end
else
    cut_1 = floor(len/3);
    cut_2 = floor(2*len/3);
    out_1 = mergesort(a(1:cut_1));
    out_2 = mergesort(a(cut_1+1:cut_2));
    out_3 = mergesort(a(cut_2+1:len));
    i = j = k = 1;
    l = 1;
    while i <= cut_1 && j <= (cut_2 - cut_1) && k <= (len-cut_2)
        if out_1(i) <= out_2(j) && out_1(i) <= out_3(k)
            out(l) = out_1(i); i = i+1; l = l+1;
        elseif out_2(j) <= out_1(i) && out_2(j) <= out_3(k)
            out(l) = out_2(j); j = j+1; l = l+1;
        else out_3(k) <= out_1(i) && out_3(k) <= out_2(j);
            out(l) = out_3(k); k = k+1; l = l+1;
        end
    end 
    while i<= cut_1 && j <= (cut_2-cut_1)
        if out_1(i) <= out_2(j)
            out(l) = out_1(i);
            l = l+ 1;i = i +1;
        else
            out(l) = out_2(j);
            l = l + 1; j = j +1;
        end
    end
    while i<= cut_1 && k <= (len-cut_2)
        if out_1(i) <= out_3(k)
            out(l) = out_1(i);
            l = l+ 1;i = i +1;
        else
            out(l) = out_3(k);
            l = l + 1; k = k +1;
        end
    end
    while j<=(cut_2 -  cut_1) && k <= (len-cut_2)
        if out_2(j) <= out_3(k)
            out(l) = out_2(j);
            l = l+ 1;j = j +1;
        else
            out(l) = out_3(k);
            l = l + 1; k = k +1;
        end
    end
    while i <= cut_1
        out(l) = out_1(i);
        l = l+1; i = i+1;
    end
    while j <= cut_2-cut_1
        out(l) = out_2(j);
        l = l+1; j = j+1;
    end
    while k <= len-cut_2
        out(l) = out_3(k);
        l = l+1; k = k+1;
    end
end