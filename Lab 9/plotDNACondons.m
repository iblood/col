function[out] = plotDNACondons(a)
str = {};
count = [];
z = length(a);

if rem(z,3) == 0;
  quot = z/3;
  for i=1:quot
    ck = a(3*(i-1) +1:3*i);
    %check atcg
    val = 0;
    for k = 1:3;
     if ck(k) == 'A';
       val = val+1;
      elseif ck(k) == 'T';
       val = val+1;
      elseif ck(k) == 'G';
       val = val+1;
      elseif ck(k) == 'C';
       val = val+1;
     end
    end

    if val == 3
    l_str = length(str);
    
    if l_str == 0;
      str{1} = ck;
      count(1) = 1;
    else
      update = 0;
      for j = 1:l_str;
       if str{j} == ck;
        update = 1;
        var = j;
        break;
       end
      end
      
      if update == 1
        count(j) = count(j) + 1;
      else
      str{l_str + 1} = ck;
      
      count(l_str+1) =  1;
      end 
    
    end 
    end 
  end
  str 
  count
  bar(count);
  hold;
  set(gca,'xticklabel',str);
end

end 