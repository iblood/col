--- non intersec starts---
--- solution for 1(a)
--> input x,y both being number array with x on x-coor & y on y-cords
--> output the area vectors of the non- intersecting triangles
check length
check for convexity
create struct
a b c find area func variables
x y input arrays of non intersec func
length(x) = = -- len
run for base 1 to all non adjoint points

--- non intersec ends ---

--- area sort starts ---
--- solution for 1(b)
 --> input x,y both being arrays
 --> output fprintf on co ordiantes
 
    sort the data
    make structure
    fix extreme most x-coord
    run from 2:l-1
    keep updating the var for largest area -- 2 records to be maintained
    similarly for small area -- 2 records to be maintained
    run diff x for all points 
--- area sort ends ---

--- fill starts ---
    -->solution for 1(c)
    --> input x,y cordinates 
    -->output fill diagrams
    use the problem 2
    abstract the co-ords of the required triangle
    fill using the prescribed colors 'rgbv'
--- fill ends ---

--- mult starts ---
    -->solution for question 2
    -->input rep of 2 poly & type of operation
    -->enter 'c' for coefficient type multiplication & 'p' for interpolation
    -->output result of add & product performed using the preferred method
    check c = 'c' -->coefficient mult
        figgure lengths
        make them equal
        add for each
        create a temp c of length 2*len - 1
        nested for running on 1:len&1:len
            c(j+i-1) = c(j+i-1) + b(i)*c(j)
        out add & product results
    check c = 'p' -->pvr
        verify the lengths
        sort the given data
        check if the odd parts are equal -- else generate error -- odd parts ->x-co-ordiantes
        add the y - cords -- out_a_t
        multiply the y-cords -- out_m_t
        --now convert the data to the actual representation of the polynomial notation of the array--
        --interpoaltion--
        --methods of interpoaltion--
        sigma(k=0->n-1 y(k)(pi(j~k (x-x(j))/pi(j~k x(k)- x(j)))))
        -- findp -- for numer of 
        --pass x coord k sep k trim k
        -- multiply 
        --denominator func generation done

        -- passage of parameters into numer & denomer function are out_a_t(1:2:len) & (k-1)/2+1 
        
--- mult ends ---