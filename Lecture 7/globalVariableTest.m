function[] = globalVaribleTest(x)

    global Alpha;
     x = x(:);
     output = 2*x^2 - exp(x) + Alpha;
     Alpha = Alpha + 1;

end