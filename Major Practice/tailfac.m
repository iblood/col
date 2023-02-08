function[out] = tailfac(n,sum)

    if n == 1
        out = sum;
    else
        out = tailfac(n-1,sum*n);
    end

end