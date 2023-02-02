clear;

succHits = hits = 0;
maxhits = input("Enter no of hits");
radius = input('Enter radius');
% check for validation of number entered;

while( hits <= maxHits)
      
          x = rand(1);
          y = rand(1);
          hits = hits + 1;
               if(x^2 + y^2 <= radius^2)
                    succHits = succHits + 1;
               end;
end;

myPi = 4*succHits/maxhits;

disp(myPi);
                     