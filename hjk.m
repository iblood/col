clear;

succHits = hits = 0;
maxHits = input("Enter no of hits");
radius = input("Enter radius");


while( hits <= maxHits)
      
          x = rand*2*radius - radius;
          y = rand*2*radius - radius;
          hits = hits + 1;
               if(x^2 + y^2 <= radius^2)
                    succHits = succHits + 1;
               end;
end;

myPi = 4*succHits/maxHits;
disp(maxHits);
disp(succHits);
disp(myPi);
                     