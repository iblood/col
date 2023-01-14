n = input("Enter a number");
 n = 2*n-1;

% try with both while loop & recursion

% while loop execution

xc =0; yc =0; k = 0;

    while abs(xc)<n && abs(yc)<n
        i = rand;
            if i<.25
                xc = xc + 1 ;
            elseif i >= .25 && i < .5
                yc = yc +1;
            elseif i >= .5 && i < .75
                xc= xc-1;
            else 
                yc = yc -1;
            end
        k = k+1;
        x(k) = xc; y(k) = yc;
    end
    plot(x,y,'b');