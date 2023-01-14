function[b] = transpose(a)
tic 
[m,n] = size(a);
    if m ~=n 
        break
    else 
        for i = 1:n 
            b(j,i)= a(i,j);
        end
    end
toc
end