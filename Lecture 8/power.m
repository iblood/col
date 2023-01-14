function[result] = power(x,y)

    if y==0
        result = 1;
    elseif  y>0
        if mod(y,2) == 0
            temp = power(x,fix(y/2));
            result = temp*temp;
        else
            temp = power(x,fix(y/2));
            result = x*temp*temp;
        end 
    else 
        y = -1*y;
        if mod(y,2) == 0
            temp = power(x,fix(y/2));
            result =1/(temp*temp);
        else
            temp = power(x,fix(y/2));
            result =1/(x*temp*temp);
        end 
    end

end