function[] = bwconverter()

    j = imread('fire.png');
    [nr nc nx] = size(j);
    bwimg = zeros(nr,nc);

    for f = 1:nr
        for g = 1:nc
            for h = 1:nx
                if h == 1;
                    bwimg(f,g) = bwimg(f,g) + j(f,g,h)*0.2126;
                elseif h==2;
                    bwimg(f,g) = bwimg(f,g) + j(f,g,h)*0.7152;
                else h==3;
                    bwimg(f,g) = bwimg(f,g) + j(f,g,h)*0.0722;
                end
            end
        end
    end

    bwimg = mat2gray(bwimg,[0,255]);
    imshow(bwimg);
end