function[y] = myMergeSort(x,start,end_t)
% declaration of global named array
global array
% assigning the value x to array;
array(start:end_t) = x;
len = length(x);
c_p = "rgbymc";
ttl_1 = "Sorting From";
ttl_2 = "To";
    if len == 1
        y = x;
    else
        cut = floor(len/2);
        yl = myMergeSort(x(1:cut),start,start+cut-1);
        yr = myMergeSort(x(cut+1:len),start+cut,end_t);
        len_l = length(yl);
        len_r = length(yr);
        i = 1;
        j = 1;
        k = 1;
        legs = array(start:end_t);
        leg = num2str(legs);
        array(start:end_t) = zeros(1,end_t-start+1);
        bar(array,"facecolor",c_p(randi(6,1,1)))
        ttl = [ttl_1 " " num2str(start) " " ttl_2 num2str(end_t)];
        legend(leg)
        title(ttl)
        pause(1)
        while i <= len_l && j <= len_r
            if yl(i) <= yr(j)
                y(k) = yl(i);
                array(start+k-1) = yl(i);
                for a = 1:length(legs)
                    if legs(a) == yl(i)
                        legs(a) = [];
                        break
                    end
                end
                i = i +1;
                k = k +1;
            else (yl(i) > yr(j));
                y(k) = yr(j);
                array(start+k-1) = yr(j);
                for a = 1:length(legs)
                    if legs(a) == yr(j)
                        legs(a) = [];
                        break
                    end
                end
                j = j + 1;
                k = k + 1;
            end
            bar(array,"facecolor",c_p(randi(6,1,1)))
            leg = num2str(legs);
            ttl = [ttl_1 " " num2str(start) " " ttl_2 num2str(end_t)];
            legend(leg)
            title(ttl)
            pause(1)
        end
        while i <= len_l 
            y(k) = yl(i);
            array(start+k-1) = yl(i);
            for a = 1:length(legs)
                if legs(a) == yl(i)
                    legs(a) = [];
                    break
                end
            end
            i = i +1;
            k = k + 1;
            bar(array,"facecolor",c_p(randi(6,1,1)))
            ttl = [ttl_1 " " num2str(start) " " ttl_2 num2str(end_t)];
            title(ttl)
            leg = num2str(legs);
            pause(1)
        end
        while j <= len_r
            array(start+k-1) = yr(j);
            y(k) = yr(j);
            for a = 1:length(legs)
                if legs(a) == yr(j)
                    legs(a) = [];
                    break
                end
            end
            j = j + 1;
            k = k + 1;
            bar(array,"facecolor",c_p(randi(6,1,1)))
            ttl = [ttl_1 " " num2str(start) " " ttl_2 num2str(end_t)];
            leg = num2str(legs);
            title(ttl)
            pause(1)
        end
        %set(gcf,'color','k')
        %axis equal off
    
        %bar(array,"facecolor",c_p(randi(6,1,1)))
        %set(gca,'xticklabel',array);
        
        
    end
end