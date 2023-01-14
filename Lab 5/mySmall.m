function[s] = mySmall(a)

[nr,nc] = size(a);
tally = 0;
    
    for i=1:nc
        if a(1) <= a(i)
            tally = tally +0;
        else
            tally = tally + 1;
        end;
    end;

    if tally == 0
        s = a(1);
    else
        a(1) = [];
        s = mySmall(a);
    end
end