function[y] = myMergeSort(x)
tic()
len = length(x);
    if len == 1
        y = x;
    else
        cut = floor(len/2);
        yl = myMergeSort(x(1:cut));
        yr = myMergeSort(x(cut+1:len));
        len_l = length(yl);
        len_r = length(yr);
        i =1;
        j = 1;
        k = 1;
        while i <= len_l && j <= len_r
            if yl(i) <= yr(j)
                y(k) = yl(i);
                i = i +1;
                k = k +1;
            else (yl(i) > yr(j));
                y(k) = yr(j);
                j = j + 1;
                k = k + 1;
            end
        end
        while i <= len_l 
            y(k) = yl(i);
            i = i +1;
            k = k + 1;
        end
        while j <= len_r
            y(k) = yr(j);
            j = j + 1;
            k = k + 1;
        end
    end
time = toc()
end