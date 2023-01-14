function[] = descending(n)

    if n==0
        fprintf('\n');
        return
    else
        disp(n);
        fprintf('\n');
        descending(n-1);
        
    end 
end 