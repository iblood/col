function[] = addborder()

j = imread('duck.jpeg');



width = 10;
newcolor = 101;

[nr nc] = size(j);

    for k = 1:nr
        for i = 1:nc
            if i < width || i > nc-width || k < width || k > nr - width
                j(k,i) = newcolor;
            end 
        end
    end

imshow(j)

end
