function [result] = gcd(m,n)

    if mod(m,n) == 0
        result = n;
    else
        result = gcd(n,mod(m,n));
    end

end