function[z] = merge(x,y)

n_x = length(x);
n_y = length(y);

z = zeros(1,n_x+n_y);
i = 1;
j = 1;
k = 1;

while i <= n_x && j <= n_y
    if x(i) <= y(j)
        z(k) = x(i);
        i = i+1;
        k = k+1;
    else
        z(k) = y(j);
        j=j+1;
        k = k+1;
    end
end

while i <=n_x
    z(k)=x(i);
    i= i+1;
    k = k+1;
end
while j <= n_y
    z(k) = y(j);
    j = j+1;
    k = k+1;
end
end