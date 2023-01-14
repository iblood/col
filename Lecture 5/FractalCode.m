first = 1;
last = 1000;
iterations = 500;
x = zeros(1,last);
mid = floor(last/2)+1;
x(mid)=1;

    for k=first:last
        a(1,k) = x(k);
    end

    for k=2:iterations
        for i=first:last 
            if i==first
                a(k,i) = xor(a(k-1,i),a(k-1,i+1));
            elseif i==last
                a(k,i) = xor(a(k-1,i),a(k-1,i-1));
            else 
                a(k,i)= xor(a(k-1,i),xor(a(k-1,i+1),a(k-1,i-1)));
            end
        end
    end
