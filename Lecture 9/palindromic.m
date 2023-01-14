function[output] = palindromic(stringr)

    if length(stringr) <= 1
        output = 1;    
    else
         [nr,nc] = size(stringr)
        if stringr(1) ~= stringr(nc)
             output = 0;
        else
             stringr(1) = [];
             stringr(nc-1) = [];
          output = palindromic(stringr);
        end
end