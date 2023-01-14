function[output_1,output_2] = myMatrixElemSum(a)
   %method 1
   [nr,nc] = size(a);
    sum = 0;
    for i = 1:nr
      for j =1:nc
       sum = sum + a(i,j); 
      end
    end
    output_1 = sum;
   %method 2
   b = a(:); new_sum = 0;
   lgt = length(b);
   for i = 1:lgt
     new_sum = new_sum + b(i);
   end
   output_2 = new_sum;
end