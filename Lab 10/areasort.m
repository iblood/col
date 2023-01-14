function[] = areasort(x,y)

    if length(x) == length(y)
        len = length(x);

        for j = 1:len-1
            for i= j:len-1
                if x(i)>x(i+1)
                    x(i) = x(i)+x(i+1);
                    x(i+1) = x(i) - x(i+1);
                    x(i) = x(i) - x(i+1);
                    y(i) = y(i) + y(i+1);
                    y(i+1) = y(i) - y(i+1);
                    y(i) = y(i) - y(i+1);
                end
            end
        end
        function[out] = findarea(a,b,c)
          out =  abs((p(a).x)*(p(b).y - p(c).y) - (p(b).x)*(p(c).y - p(a).y)+(p(c).x)*(p(a).y - p(b).y) );
        end
        for i = 1:len
            p(i) = struct('x',x(i),'y',y(i));
        end
        j = 2;
        
        while (j<len)
            area(j-1) = findarea(1,j,len);
            store(j-1) = j; 
            j = j+1;
        end
        len2 = length(area);
        for i = 1:len2-1
            for k = i:len2-1
                if area(k)>area(k+1)
                    area(k) = area(k)+ area(k+1);
                    area(k+1) = area(k) - area(k+1);
                    area(k) = area(k) - area(k+1);
                    store(k) = store(k) + store(k+1);
                    store(k+1) = store(k) - store(k+1);
                    store(k) = store(k) - store(k+1);
                end
            end
        end
        fprintf('Co-ordiantes of Largest triangle are x1 %d y1 %d x2 %d y2 %d x3 %d y3 %d \n',p(1).x,p(1).y,p(len).x,p(len).y,p(store(len2)).x,p(store(len2)).y);
        fprintf('Co-ordiantes of second Largest triangle are x1 %d y1 %d x2 %d y2 %d x3 %d y3 %d \n',p(1).x,p(1).y,p(len).x,p(len).y,p(store(len2-1)).x,p(store(len2-1)).y);
        diffr = -1;
        for i = 1:len-1
            if x(i+1) - x(i) > diffr
                differ = x(i+1) - x(i);
                loc = i;
            end
        end
        %trim off x(loc)& x(loc+1)
        cont = [p(loc).x p(loc).y p(loc+1).x p(loc+1).y]; 
        p(loc).x = [];
        p(loc).y = [];
        p(loc+1).x = [];
        p(loc+1).y = [];
        for h = 1:length(x)-2
           area1 =  (cont(1))*(p(h).y-cont(4))-p(h).x*(cont(4)-cont(2))+(cont(3))*(cont(2)-p(h).y);
            co(h) = h;
        end 
        
        len2 = length(area1);
        for i = 1:len2-1
            for k = i:len2-1
                if area1(k)>area1(k+1)
                    area1(k) = area1(k)+ area1(k+1);
                    area1(k+1) = area1(k) - area1(k+1);
                    area1(k) = area1(k) - area1(k+1);
                    co(k) = co(k) + co(k+1);
                    co(k+1) = co(k) - co(k+1);
                    co(k) = co(k) - co(k+1);
                end
            end
        end
        
        fprintf('Co-Ordinates of Triangle with smallest area are x1 %d y1 %d x2 %d y2 %d x3 %d y3 %d \n',cont(1),cont(2),cont(3),cont(4), p(co(1)).x,p(co(1)).y);
        fprintf('Co-Ordinates of Triangle with second smallest area are x1 %d y1 %d x2 %d y2 %d x3 %d y3 %d \n',cont(1),cont(2),cont(3),cont(4),p(co(2)).x,p(co(2)).y);
    end

end