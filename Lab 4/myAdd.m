function[output] = myAdd(a,b);

 [nra,nca] = size(a);
 [nrb,ncb] = size(b);

  if nra == 1 && nrb ==1 

    if nca == ncb 

         gs=ls = ncb;
         
    else
        if nca >ncb
          temp_b = zeros(1,nca);
          diff = mod(nca,ncb);
           for j = diff+1: ncb;
             temp_b(1,j) = b(1,j-diff);
           end;
          b = zeros(1,nca);
          b = temp_b;
          ls = nca;
        else
          temp_a = zeros(1,ncb);
          diff = mod(nca,ncb);
           for j = diff+1: nca;
             temp_a(1,j) = a(1,j-diff);
           end;
          a = zeros(1,ncb);
          a = temp_a;
          ls = ncb;
        end;
        
    end;

    d = zeros(1,ls+1);
    
    for k= 1:ls
            c = ls + 1 - k;
            e = ls + 2 -k;
            temp = d(1,e) + a(1,c) + b(1,c);

      if temp>9
         d(1,c) = 1;
         temp = num2str(temp);
         temp = temp(2);
         temp = str2num(temp);
      end;
        d(1,e) = temp;
    end;

    

   output = d;
  else
  output = "Please enter a Vector. Example dimension: 1 x n";
  end;
end;