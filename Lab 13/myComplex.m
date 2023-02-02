classdef myComplex < handle

properties
    x
    y
end
    methods
        function out = myComplex(x,y)
            out.x = x;
            out.y = y;
        end
        function [c] = plus(a,b)
            c.x = a.x + b.x;
            c.y = a.y + b.y;
        end
        function c = minus(a,b)
            c.x = a.x - b.x;
            c.y = a.y - b.y;
        end
        function c = times(a,b)
            c.x = a.x*b.x - a.y*b.y;
            c.y = a.y*b.x + a.x*b.y;
        end
        function c = mtimes(a,b)
            c.x = a.x*b.x - a.y*b.y;
            c.y = a.x*b.y + a.y*b.x;
        end

    end

end
