function[] = fillr(x,y)
    
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
        d1x = [p(1).x p(len).x p(store(len2)).x];
        d2x = [p(1).x p(len).x p(store(len2-1)).x];
        d1y = [p(1).y p(len).y p(store(len2)).y];
        d2y = [p(1).y p(len).y p(store(len2-1)).y];
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
        d3x = [cont(1) cont(3) p(co(1)).x];
        d4x = [cont(1) cont(3) p(co(2)).x];
        d3y = [cont(2) cont(4) p(co(1)).y];
        d4y = [cont(2) cont(4) p(co(2)).y];
        
        fill(d1x,d1y,'r');
        hold  on 
        fill(d2x,d2y,'g');
        hold on 
        fill(d3x,d3y,'b');
        hold on 
        fill(d4x,d4y,'y');
        hold on

    end

end