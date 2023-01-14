function[root,total] = newton(ig,toll,func,dfunc)

diffd = 1000;
k= 0;
xo = ig;

while diffd > toll
xn = xo - feval(func,xo)/feval(dfunc,xo);
diffd = abs(xn-xo);
k = k+1;
xo = xn;

end
root = xn;
total = k;
end