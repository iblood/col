function[fib,fib2,fib3] = myFib(n)

temp = x = 0;
count = y = 1;

% while loop
if n ==1
   temp = 1;
else
    while count <= n-1
        temp = x+ y;
        x = y;
        y = temp;
        count = count + 1;
    end;
end;

fib = temp;

% for loop

if n == 1
    temp = 1;
else 
   for k = 1:n-1
     temp = x+ y;
     x = y;
     y = temp;
    end;
end;

fib2 = temp;

goldr = (1+sqrt(5))/2;

goldr1 = 1 - goldr;

fib_s = (goldr^n - goldr1^n)/sqrt(5) ;
fib3 = fib_s;