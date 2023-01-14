function [result,call] = myFib(n)

global CALL

    if n == 1
         result = 1;
         CALL = 0;
    elseif n==2
        result = 1;
    else 
        result = myFib(n-2) + myFib(n-1);
    end;


    CALL = CALL + 1
    call = CALL;
    
end