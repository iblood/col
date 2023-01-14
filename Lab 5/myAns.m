function [p] = myAns(v,s)

    p=0;

    if v(1) == s
        p = 1;
    elseif length(v) > 1
        v(1) = [];
        p = myAns(v,s);
    else
        p = 0;
    end

end