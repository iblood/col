classdef myComplexMatrix < myComplex

properties
    
end
methods
    function out = myComplexMatrix(a,b)
        out@myComplex(a,b);
         
    end
    function out = getelem(this,m,n)
        out = this.x(m,n) + 1i*this.y(m,n);
    end
    function out = plus(mat_1,mat_2)
        if nargin == 2
            if isa(mat_1,'myComplexMatrix') && isa(mat_2,'myComplexMatrix')
                if size(mat_1.x) == size(mat_2.x)
                    out = myComplex(mat_1.x + mat_2.x , mat_1.y + mat_2.y);
                else
                    error("operator +: nonconformant arguments");
                end
            else
                error("The given inputs must be of the class myComplexMatrix");
            end
        else
            error("Number of input arguments must be equal to 2");
        end
    end
    function out = minus(mat_1,mat_2)
        if nargin == 2
            if isa(mat_1,'myComplexMatrix') && isa(mat_2,'myComplexMatrix')
                if size(mat_1.x) == size(mat_2.x)
                    out = myComplex(mat_1.x - mat_2.x ,mat_1.y - mat_2.y);
                else
                    error("operator -: nonconformant arguments");
                end
            else
                error("The given inputs must be of the class myComplexMatrix");
            end
        else
            error("Number of input arguments must be equal to 2");
        end

    end
    function [out] = mtimes(mat_1,mat_2)
        [mat_1_r mat_1_c] = size(mat_1.x);
        [mat_2_r mat_2_c] = size(mat_2.x);   
        matrix_1 = mat_1.x + 1j*mat_1.y;
        matrix_2 = mat_2.x + 1j*mat_2.y ;    
        if mat_1_c == mat_2_r 
            out= matrix_1*matrix_2;
        else
            error("operator *: nonconformant arguments");
        end
    end

end

end