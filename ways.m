function[output] = ways(n)
  if n > 0
  function[fac_o] = fac(a)
      prod = 1;
      for j = 1:a
        prod = prod*j;
      end
      fac_o = prod;
  end
  
   if mod(n,2) ~= 0
      base = 1;
      k = floor(n/2);
      for i=1:k
        nv = 2*i - 1;
        nh = n - nv;
        numer = fac(nh/2 + nv);
        denom = fac(nv)*fac(nh/2);
        base = base + numer/denom;
      end
   else
       base = 2;
       k = floor(n/2) - 1;
       for i=1:k
         nh = 2*i;
         nv = n - nh;
         numer = fac(nh/2 + nv);
         denom = fac(nv)*fac(nh/2);
         base = base + numer/denom;
       end
   end
   
   output = base;
 else
   output = 'INPUT ARGUMENT MUST BE POSITIVE INTEGER';
 end
 
end