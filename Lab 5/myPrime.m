function [] = myPrime(n)
     function[res] = test(n,a)
        res = 1;
        if mod(n,a) == 0
            res = 0
            11
        else 
           if n > a-2
           test(n,a+1);
           12
           end
        end
    end 
test(n,2)
end