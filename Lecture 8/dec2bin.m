function[binary] = dec2bin(decimal)

    if decimal == 0
        binary = 0;
    else
        binary = mod(decimal,2) + 10*(dec2bin(fix(decimal/2)));
    end

end