function[a] = rainbow()

    a = imread('rainbowsource.jpeg');
    [m n] = size(a);
    
    for i = 1:m 
        for j = 1:n 
            for k = 1:m-i
                if a(k,j) > a(k+1,j)
                    temp = a(k,j);
                    a(k,j) = a(k+1,j);
                    a(k+1,j) = temp;
                end
            end
        end
    end
    imshow(a)
end