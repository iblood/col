function[na,nb,times] = bissect(a,b,toll,feq)


k=0;
difd = 1000;
fa = feval(feq,a);
fb = feval(feq,b);
if fa=0 && fb<0 || fa>0 || fb>0;
k = -1;
else

while difd >toll
m = (a+b)/2;
fa = feval(feq,a);
fb = feval(feq,b);
fm = feval(feq,m);

if fa<=0 && fm <= 0 || fa>=0 && fm >= 0
a = m; 
elseif fb<=0 && fm <= 0 || fb>=0 && fm >= 0
b = m;
else
a = [];
b=[];
end

difd = abs(a-b);
k = k+1;

end
end

na = a; nb = b; times = k;
end