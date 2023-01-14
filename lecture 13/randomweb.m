function[] = randomweb(n)
    tic
    mat = zeros(n,n);

    for i = 1:n
        for j = 1:n
            r= rand(1);
            if i ~=j && r <= 1/(1+abs(i-j))
                mat(i,j) = 1;
            end
        end
    end

    x = zeros(1,n);
    y = zeros(1,n);

    for k = 1:n 
        x(1,k) = cos(k*2*pi/n);
        y(1,k) = sin(k*2*pi/n);
    end
    color = ['r','g','b','c','m','k','y'];
    
    for i  = 1:n
        for j= 1:n
            if mat(i,j) ==1 && mat(j,i) ==1;
                plot([x(i) x(j)],[y(i) y(j)],color(5));
                hold on;
            elseif mat(i,j)== 1;
                xm = (x(i)+x(j))/2;
                ym = (y(i)+y(j))/2;
                plot([x(i) xm ],[y(i) ym],color(2));
                hold on;
                plot([x(j) xm ],[y(j) ym],color(1));
                hold on;
            else mat(j,i) == 1;
                xm = (x(i)+x(j))/2;
                ym = (y(i)+y(j))/2;
                plot([x(i) xm ],[y(i) ym],color(2));
                hold on;
                plot([x(j) xm ],[y(j) ym],color(1));
                hold on;
            end
        end
    end
    set(gcf,'color','k');
    hold 
    axis equal off;
    toc
end