n = randi(10);
v = randi(10,1,n)
vsquare = v;
 i = 1;
 while(i<=n)
 vsquare(i) = vsquare(i) * vsquare(i);
 i = i+1;
 end;
 plot(vsquare,"r");
 hold
 vsqrt = sqrt(v);
 plot(vsqrt, "g");

