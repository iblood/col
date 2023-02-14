function[x,y] = mySnowFlakes2(n,a,b)

    if n==1 
        x = a; y= b;
    else 
        dist_x = abs(a(1) - a(length(a)));
        dist_y = abs(b(1) - b(length(b)));
        a = [a(1)-dist_x a a(length(a))+dist_x]
        b = [b(1)-dist_y b b(length(b))+dist_y]
        [x y] = mySnowFlakes2(n-1,a,b);
    end
end