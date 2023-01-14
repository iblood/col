function [result] = myMul(a,b) 
     
    if b==0
        result = 0;
    else
        result = a + myMul(a,b-1);
    end

end