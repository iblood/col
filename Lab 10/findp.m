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
                    for j = base_l:len_x - base_l;
                        
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