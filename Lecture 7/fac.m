function[fac] = fac(n)
    persistent i
    if n == 0
        fac = 1;
        i = 0;
    else
        fac=fac(n-1)*n;
    end;
    i = i+1
end;