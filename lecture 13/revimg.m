function[] = revimg()

    j = imread('fire.png');
    [nr nc nx] = size(j);

    for k=1:nr
        for f = 1:nc
            for h = 1:nx
                i(k,f,h) = j(k,nc+1-f,h);
            end
        end
    end

    imshow(i);
end