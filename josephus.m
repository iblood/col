function[c] =josephus(n)
if n==1 
c = 1;
elseif (rem(n,2) == 0)
c = 2*josephus(fix(n/2)) - 1;
else
c = 2*josephus(fix(n-1)/2) + 1;
end 
end