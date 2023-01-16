function[y] = myMergeSort(x,start,end_t)
% declaration of global named array
global array
% assigning the value x to array;
array(start:end_t) = x;
len = length(x);
c_p = "rgbymc";
    if len == 1
        y = x;
    else
        cut = floor(len/2);
        yl = myMergeSort(x(1:cut),start,start+cut-1);
        yr = myMergeSort(x(cut+1:len),start+cut,end_t);
        len_l = length(yl)
        len_r = length(yr)
        i = 1;
        j = 1;
        k = 1;
        while i <= len_l && j <= len_r
            if yl(i) <= yr(j)
                y(k) = yl(i);
                array(start+k-1) = yl(i);
                i = i +1;
                k = k +1;
            else (yl(i) > yr(j));
                y(k) = yr(j);
                array(start+k-1) = yr(j);
                j = j + 1;
                k = k + 1;
            end
           array
        end
        while i <= len_l 
            y(k) = yl(i);
            array(start+k-1) = yl(i);
            i = i +1;
            k = k + 1;
            array
        end
        while j <= len_r
            array(start+k-1) = yr(j);
            y(k) = yr(j);
            j = j + 1;
            k = k + 1;
            array
        end
        %set(gcf,'color','k')
        %axis equal off
        bar(array,"facecolor",c_p(randi(6,1,1)))
        set(gca,'xticklabel',array);
        ttl_1 = "Sorting From";
        ttl_2 = "To";
        ttl = [ttl_1 " " num2str(start) " " ttl_2 num2str(end_t)];
        title(ttl)
        pause(1)
    end
end