function[out,comparisions] = myTerinarySearch2(array,num,is_sorted)

    if is_sorted == 0
        array = myMergeSort(array);
    end
    len = length(array);
    if len == 1
        comparisions = 1;
        if num == array(1);
            out = 1;
        else 
            out = 0;
        end
    elseif len ~=2
        cut = floor(len/2);
        [out_1,c_1] = myTerinarySearch2(array(1:cut),num,1);
        [out_2,c_2] = myTerinarySearch2(array(cut+1:len),num,1);
        comparisions = c_1 + c_2;
        if out_1 == 1 || out_2 == 1
            out = 1;
        else
            out = 0;
        end
    else 
        cut_1 = floor(len/3);
        cut_2 = floor(2*len/3);
        [out_1,c_1] = myTerinarySearch2(array(1:cut_1),num,1);
        [out_2,c_2] = myTerinarySearch2(array(cut_1+1:cut_2),num,1);
        [out_3,c_3] = myTerinarySearch2(array(cut_2+1:len),num,1);
        comparisions = c_1 + c_2 + c_3;
        if out_1 == 1 || out_2 == 1 || out_3 == 1
            out = 1;
        else
            out = 0;
        end
    end
end