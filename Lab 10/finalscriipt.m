function[out_f] = finalscriipt(a)
            len_f = length(a)/2;
            out_f = zeros(1,len_f);
            final_x = a(1:2:length(a));
            final_y = a(2:2:length(a));
            for k = 1:len_f
                out_f(1,1:len_f)= (final_y(k))*(findp(final_x,k))/(findd(final_x,k)) +  out_f(1,1:len_f)
            end
        end