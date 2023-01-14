function [product] = addSumFunc(a)
%Calculates sum and Product of all elements in a vector
n=length(a);
mySum=0;
myProduct=1;
for k=1:n
% mySum = mySum+a(k);
myProduct=myProduct*a(k);
end
% sum=mySum;
product=myProduct;
