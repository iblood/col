m = 10;
n = 6;
p = 10;
a = randi(10,m,n);
b = randi(10,n,p);
 c = a*b;
d = zeros(10,10);
 for i = 1:m
   for j = 1:n
     for k = 1:p
       d(i,k) = a(i,j)*b(j,k) + d(i,k);
     end
   end
 end
  disp(d)
  fprintf("cal val by prog \n");
   
  disp(c)
fprintf("Calc val by matlab default function");
