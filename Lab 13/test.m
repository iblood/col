function[] = test()

%Complex
n = [2 4 8 16 32 64 128 256 512];
time_a = zeros(1,2*length(n));
time_s = zeros(1,2*length(n));
time_m = zeros(1,2*length(n));
for i = 1:length(n)
    a = myComplexMatrix(randi(n(i),n(i)),randi(n(i),n(i)));
    b = myComplexMatrix(randi(n(i),n(i)),randi(n(i),n(i)));
    tic()
    a + b;
    t = toc();
    time_a(2*i-1) = t;
    tic()
    a - b;
    t = toc();
    time_s(2*i-1) = t;
    tic()
    a*b;
    t = toc();
    time_m(2*i-1) = t;
end
%real
for i = 1:length(a)
    a = randi(n(i),n(i));
    b = randi(n(i),n(i));
    tic()
    a + b;
    t = toc();
    time_a(2*i) = t;
    tic()
    a-b;
    t = toc();
    time_s(2*i) = t;
    tic()
    a*b;
    t = toc();
    time_m(2*i) = t;
end
%plotting
bar(time_m)
end