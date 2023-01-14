function[out_1,out_2] = bsort(x,y)

%validate input and check length. input validation is not possible in matlab
l = length(x);
    for i = 1:l-1
        for j = 1:l-i 
            if x(j)>x(j+1)
                %swapping
                x(j) = x(j+1) + x(j);
                x(j+1) = x(j) - x(j+1);
                x(j) = x(j) - x(j+1);
                y(j) =y(j+1) +y(j);
                y(j+1) =y(j) -y(j+1);
                y(j) =y(j) -y(j+1);
            end
        end
    end

    out_1 = x;
    out_2 = y;
end