function[output] = nonintersec(x,y)

    if length(x) == length(y)
        %check for convexity
        len = length(x);
        for i = 1:len
            p(i) = struct('x',x(i),'y',y(i))
        end
        function[out] = findarea(a,b,c)
            out = abs((a.x)*(b.y-c.y) - (b.x)*(c.y-a.y) + (c.x)*(a.y - b.y));
        end
        base = 1;

        %non-intersecting triangles are triangles formed by non intersecting diagonals
        for j = base+1:len-1
            area(j-1) = findarea(p(base),p(j),p(j+1));
        end
        output = area;
    else
        output = 'There was a error in the string lengths';
    end

end