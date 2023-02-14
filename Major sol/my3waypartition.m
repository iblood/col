function[y] = my3waypartition(x)

    len = length(x)
    j = 1
    for i = 1:len
        if x(i) == 'Red'
            x(i) = x(j); x(j) = 'Red';
            j = j+1;
        end
    end
    for i=j:len
        if x(i) == 'Green'
            x(i) = x(j); x(j) = 'Green';
            j = j+1;
        end
    end
    y = x;
end