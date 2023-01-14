function[sumt]= mySum(v);

[nr, nc] = size(v);
total = 0;
for k=1:nr
    for j = 1:nc
        total = total + v(k,j);
     end;
end;      

sumt = total;