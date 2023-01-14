function[gc_c] = DNAGCCondons(a)

l = length(a);
count = [ 0 0];
for i = 1:l
  if a(i) == 'A'
    count(1) = count(1) + 1;
   elseif a(i) == 'T'
    count(1) = count(1) +1;
  elseif a(i) =='G'
    count(2) =count(2) + 1;
   elseif  a(i) == 'C'
    count(2) = count(2) + 1;
   end
end
 gc_c = (count(2)/(count(2)+count(1)) )*100;
end