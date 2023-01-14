first = 1; 
last = 1000;
iterations = 500;
x = zeros(1,last);
mid = floor(last/2) + 1;
x(mid) = 1;
for k = first:last
a(1,k) = x(k);
end;

for k = 2:iterations
   for j = first:last
       if j == first
            a(k,j) = xor a;
       elseif j == last
           % a(k,j) = x or a;
       else 
            a(k,j) = xora;
       end
   end
end
I = mat2gray(a);
imshow;
