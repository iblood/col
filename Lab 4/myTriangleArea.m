function[area,perimeter] = myAdd(x1,y1,x2,y2,x3,y3)
    a = sqrt((x1-x2)^2 + (y1 - y2)^2);
    b = sqrt((x2-x3)^2 + (y2 - y3)^2);
    c = sqrt((x1-x3)^2 + (y1 - y3)^2);

    s = (a+b+c)/2;

    area  = sqrt((s)*(s-a)*(s-b)*(s-c));
   
    perimeter = 2*s;
end;
