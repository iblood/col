function[] = drawflakes(n)
    x = randi(10,1,2); y = randi(10,1,2);
    %finding the points of trisection to form the base of the new small triangle
    %finding the midpoint of the lines
    %usingtrignometry to find the other corner of the new triangle
    %find slope of the current line
    %add 60 deg and 120 deg to it to make new lines --> define a function to find the line equation and its solution
    if n ~= 0
        if n==1
            plot(x,y);
        else
            tri_1_x = (2*x(1)+x(2))/3;
            tri_2_x = (2*x(2)+x(1))/3;
            tri_1_y = (2*y(1)+y(2))/3;
            tri_2_y = (2*y(2)+y(1))/3;
            x = [x(1) tri_1_x tri_2_x x(2)];
            y = [y(1) tri_1_y tri_2_y y(2)];
            if n>2
                
            end
            plot(x,y);
        end
    else
        error("Expected values of the input argument is integers greater than 0--> given input is 0");
    end
end