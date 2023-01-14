half = floor(n/2);

a(1,1) = 1;
j = 1;
    for k=2:half
        quo = floor(n/k);
        if quo*k == n
            j= j+1;
            a(1,j) = k;
        end;
    end;

b = 0;

lengths = length(a);

for i=1:lengths
    i
    a(i)
    if mod(a(i),q) == 0
        b = a(i)
    end
end