function[out_d] = findd(d_x,k)

    val_k = d_x(k);
    d_x(k) = [];
    len_x = length(d_x);
    out_d = 1;
    for t = 1:len_x
        out_d = (out_d)*(val_k - d_x(t));
    end

end