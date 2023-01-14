function[output] = strrev(str)

    y = strsplit(str)
    length(y)
    function[rev_str] = rev(lgt,unit)
        if lgt > unit
        rev_str(lgt-unit+1) = y(unit)
        rev(lgt,unit+1)
        else
        output = strjoin(rev_str)
        end
    end 
output = rev(length(y),1);
end 