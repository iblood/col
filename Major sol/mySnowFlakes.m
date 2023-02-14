function[] = mySnowFlakes(n)

    [x y] = mySnowFlakes2(n,randi(10,1,2),randi(10,1,2));
    line(x,y);
end