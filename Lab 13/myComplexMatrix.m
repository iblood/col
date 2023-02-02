classdef myComplexMatrix < handle

properties
    matrix
end
methods
    function out = myComplexMatrix(a,b)
         out.matrix = myComplex(a,b);
         
    end
    function out = getelem(this,m,n)
        out = this.matrix.x(m,n) + 1i*this.matrix.y(m,n);
    end
    function out = plus(mat_1,mat_2)
        if nargin == 2
            if isa(mat_1,'myComplexMatrix') && isa(mat_2,'myComplexMatrix')
                if size(mat_1.matrix.x) == size(mat_2.matrix.x)
                    out.matrix = myComplex(mat_1.matrix.x + mat_2.matrix.x , mat_1.matrix.y + mat_2.matrix.y);
                else
                    error("The dimensions of given two matrices didnot match");
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
                if size(mat_1.matrix.x) == size(mat_2.matrix.x)
                    out.matrix = myComplex(mat_1.matrix.x - mat_2.matrix.x ,mat_1.matrix.y - mat_2.matrix.y);
                else
                    error("The dimensions of the given two matrices did not match");
                end
            else
                error("The given inputs must be of the class myComplexMatrix");
            end
        else
            error("Number of input arguments must be equal to 2");
        end

    end
    function [out] = mtimes(mat_1,mat_2)
        [mat_1_r mat_1_c] = size(mat_1.matrix.x);
        [mat_2_r mat_2_c] = size(mat_2.matrix.x);   
        matrix_1 = mat_1.matrix.x + 1j*mat_1.matrix.y;
        matrix_2 = mat_2.matrix.x + 1j*mat_2.matrix.y ;    
        if mat_1_c == mat_2_r 
            out.matrix = matrix_1*matrix_2;
        else
            error("The dimensions of the matrix are not suitable for the operation Matrix Multiplication");
        end
    end

end

end