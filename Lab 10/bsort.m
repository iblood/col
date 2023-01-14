function[out] = bsort(x)
        len = length(x);
            for i = 1:2:len-3
            i
                for j = 1:2:len-i-2
                    if x(j)>x(j+2)
                    x(j) = x(j)+x(j+2);
                    x(j+2) = x(j)-x(j+2);
                    x(j) = x(j) - x(j+2);
                    x(j+1) = x(j+1)+x(j+3);
                    x(j+3) = x(j+1)-x(j+3);
                    x(j+1) = x(j+1) - x(j+3);
                    end
                end
            end
            out = x;
end