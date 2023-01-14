function[out_a,out_m] = mult(a,b,c)

    if c=='c'
        len_a = length(a);
        len_b = length(b);
        %var length resolution begins
        if len_a ~= len_b
            c = zeros(1,len_a);
            if len_a > len_b
                
                diff = len_a - len_b;
                for j= diff+1:len_a
                    c(j) = b(j-diff);
                end
                b = c;
                len_b = len_a;
            elseif len_a < len_b
                
                diff = len_b - len_a;
                for j = diff+1:len_b
                    c(j) = a(j-diff);
                end
                a = c;
                len_a = len_b;
            end
        end
        %var length resolution ends
        c = zeros(1,2*len_a - 1);
        %perform addition
        j = 1;
        while j<len_a
            out_a(j) = a(j) + b(j);
            j = j+1;
        end
        % perform addition ends
        %perform multiplication begins
        for i = 1:len_b
            for j = 1:len_a
                c(j+i-1) = c(j+i-1) + a(j)*b(i);
            end
        end
        out_m = c;
        %perorm multiplication ends
    elseif c == 'p';
     if length(a) == length(b)
        %sort the given data
        %DRY 
        len = length(a);
        function[out] = bsort(x)
            for i = 1:2:len-3
                for j = 1:2:len-i-2
                    if x(j)>x(j+2)
                    x(j) = x(j)+x(j+2);
                    x(j+2) = x(j)-x(j+2);
                    x(j) = x(j) - x(j+2);
                    x(j+1) = x(j+1)+x(j+3);
                    x(j+3) = x(j+1)-x(j+3);
                    x(j+1) = x(j+1) - x(j+3);
                    end
                end
            end
            out = x;
        end
        %sort function  ends
        x = bsort(a);
        y = bsort(b);
        %expecting the same values of x;
        %len len2 shlould be equal 
        
        
        %normalising the rep 
        %finalising the output
        %usage guidelines -- while declaring function arguments declare k as (k-1)/2 + 1
        function[out_r] = findp(p_x,k )
            len_x = length(p_x)-1;
            out_r(1) = 1;
            p_x(k) = [];
            for a = 1:len_x
             
                if a == 1
                    temp_r = 0;
                    for h = 1:len_x
                        
                            temp_r = temp_r + p_x(h);
                    
                    end 
                    base_cont = temp_r;
                    
                else
                    base_l = a - 1;
                    for j = base_l:len_x - base_l
                        
                        r = 1;base_rep = 1;base_cont = 0;
                        while r <= j
                            base_rep = base_rep*p_x(r);
                            r = r+1;
                        end
                        for h = j+1:len_x
                            base_cont = base_rep*p_x(h) + base_cont;
                        end
                        
                    end 
                end 
                if mod(len_x,2) == 0
                    if mod(a,2) ~= 0
                        out_r(a+1) = -base_cont;
                    else 
                        out_r(a+1) = base_cont;
                    end
                else
                    if mod(a,2) ~= 0
                        out_r(a+1) = base_cont;
                    else 
                        out_r(a+1) = -base_cont;
                    end
                end
            end
        end 
        %for denominator
        function[out_d] = findd(d_x,k)

            val_k = d_x(k);
            d_x(k) = [];
            len_x = length(d_x);
            out_d = 1;
            for t = 1:len_x
                out_d = (out_d)*(val_k - d_x(t));
            end

        end
        
        % -- begining of final script -- 
        function[out_f] = finalscript(a)
            len_f = length(a)/2;
            out_f = zeros(1,len_f);
            final_x = a(1:2:length(a));
            final_y = a(2:2:length(a));
            for k = 1:len_f
                out_f(1,1:len_f) = final_y(k)*(findp(final_x,k))/findd(final_x,k) + out_f(1:len_f);
            end
        end
        % -- end of declaration of final script
        out_a_t = zeros(1,len);
        out_m_t = zeros(1,len-1);
        %make addition
            for i = 2:2:len 
                out_a_t(i) = x(i) + y(i);
            end
            for i = 1:2:len
                out_a_t(i) = x(i);
            end 
        %end addition
        %make multiplication
        %mult var test
        out_m_t_1 = finalscript(x);
        out_m_t_2 = finalscript(y);
        
        for i = 1:len/2
            for j = 1:len/2
                out_m_t(j+i-1) = out_m_t(j+i-1) + out_m_t_1(j)*out_m_t_2(i);
            end
        end
        %end multiplication 
        out_a = finalscript(out_a_t);
        out_m = out_m_t;
     else
     out_a = 'There is a error in the lengths';
     out_m = 'Resolve the issue';
     end

    end

end
