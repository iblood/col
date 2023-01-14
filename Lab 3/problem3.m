clear
a = linspace(1,100,100);
i = 1;
hype = 0;
max = 100;
total = 0;
while ( i <= max)
  total= total + a(i);
  i = i+1;
end;
average = total/max
summati = 0;
i = 1;
while ( i <= max)
  temp = a(i) - average;
  temp = temp^2;
  summati = summati + temp;
  i = i+1;
end;
disp(summati)
mySD = sqrt(summati/max);
mySd_mtlw = sqrt(summati/(max-1));
  mtlbStd = std(a);
fprintf("Standard deviation calculated using the algo is %d  taking n = max \n",
mySD);
fprintf("while calculating using n = max-1 is %d \n", mySd_mtlw);
fprintf("using matlab builtin function is %d \n", mtlbStd);
fprintf("max value is length of vactor a max = %d",max);
