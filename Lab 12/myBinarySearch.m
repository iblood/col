function[out] = myBinarySearch(array,num,verifier)

    if verifier == 0
        array = myInsertSort(array);
    end
    len = length(array);
    if len == 1
        if num == array(1)
            out = 1;
        else
            out = 0;
        end
    else
        cut = floor(len/2);
        out_1 = myBinarySearch(array(1:cut),num,1);
        out_2 = myBinarySearch(array(cut+1:len),num,1);
        if out_1 == 1 || out_2 == 1
            out = 1;
        else
            out = 0;
        end
    end
end