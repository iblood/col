clear
actual = e^-1;
n = 1;
difference = 0.0001;
approximation = 100;
j = mod(actual,approximation);
while( j > difference)
 approximation = (1 - 1/n)^n;
 n = n+1;
 j = mod( actual , approximation);
end
disp(e^-1)

 disp(n)
 
