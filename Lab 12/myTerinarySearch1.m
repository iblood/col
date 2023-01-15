function[out] = myTerinarySearch1(array,num,is_sorted)

    if is_sorted == 0
        array = mySelectionSort(array);
    end
    len = length(array);
    if len == 1
        if num == array(1);
            out = 1;
        else 
            out = 0;
        end
    elseif len ~=2
        cut = floor(len/2);
        out_1 = myTerinarySearch1(array(1:cut),num,1);
        out_2 = myTerinarySearch1(array(cut+1:len),num,1);
        if out_1 == 1 || out_2 == 1
            out = 1;
        else
            out = 0;
        end
    else 
        cut_1 = floor(len/3);
        cut_2 = floor(2*len/3);
        out_1 = myTerinarySearch1(array(1:cut_1),num,1);
        out_2 = myTerinarySearch1(array(cut_1+1:cut_2),num,1);
        out_3 = myTerinarySearch1(array(cut_2+1:len),num,1);
        if out_1 == 1 || out_2 == 1 || out_3 == 1
            out = 1;
        else
            out = 0;
        end
    end
end