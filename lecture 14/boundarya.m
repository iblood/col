function[] = boundarya(x,y)

j = length(x);
k = length(y);
array_x = [x(1)];
array_y = [y(1)];
    if j==k && j > 2
        [x, y] = bsort(x,y);
        scatter(x,y,'c','filled');
        hold on;
        axis equal off 
        set(gcf,'color','k')
        location_v = 1;
        while location_v < j
            for i = location_v+1:j
                slope = (y(i) - y(location_v))/(x(i)-x(location_v));
                if i == location_v + 1
                    big_s = slope;
                    location = i;
                    array_x(i) = x(i)
                    array_y(i) = y(i)
                    plot(array_x,array_y,'c')
                    pause(2)
                end
                if slope > big_s
                    big_s = slope;
                    location = i;
                end 
            end
            plot([x(location_v),x(location)],[y(location_v),y(location)],'c');
            hold on
            location_v = location;
        end

        location_r = j;

        while location_r > 1

            location_old = location_r;
            loc_temp_l = 0;
            loc_temp_m = 0;
            loc_temp_h = 0;

            for i = location_r-1:-1:1
               
                slope = (y(i) - y(location_r))/(x(i)-x(location_r));

               if location_r == j && slope == -Inf
                   loc_temp_l = i;
                   break;
               else
                if i == location_r - 1
                   if y(i) < y(location_r)
                        small_s = slope;
                        loc_temp_l = i;
                   elseif y(i) == y(location_r)
                        mod_s = slope;
                        loc_temp_m = i;
                   else y(i) > y(location_r);
                        top_s = slope;
                        loc_temp_h = i;
                   end
                end
               
                if y(i) < y(location_r)
                    
                    if loc_temp_l == 0
                        small_s = slope;
                        loc_temp_l = i;
                    else loc_temp_l ~= 0;
                        if slope  > small_s
                            small_s = slope;
                            loc_temp_l = i;
                        end
                    end 
                end

                if y(i) > y(location_r)
                    if loc_temp_h == 0 
                       top_s = slope;
                       loc_temp_h = i;
                    else 
                        if top_s == Inf
                            top_s = slope;
                            loc_temp_h = i;
                        end
                       if slope > top_s
                            top_s = slope;
                            loc_temp_h = i;
                       end
                    end
                end

                if slope == 0
                    if loc_temp_m == 0
                        mod_s = slope;
                        loc_temp_m = i;
                    end
                end

               end

            end

            % checking for set variables loc_temp & proceeding in the order l-m-h
            % updating the while loop variable location_r after verifcation

            if loc_temp_l ~= 0
                location_r = loc_temp_l;
            elseif loc_temp_m ~=0
                location_r = loc_temp_m;
            else loc_temp_h ~= 0;
                location_r = loc_temp_h;
            end 

            plot([x(location_old),x(location_r)],[y(location_old),y(location_r)],'c');
            hold on

        end

        % while loop testing for reverse is closed
        % removing the axis -- establishing the background color of the panel to black using set & property gcf

        hold on;

    else

    %gen error text
    fprintf('The length of co-ordinate array did not meet the requirements.\n minimum length required is 3 \n length of x: %d \n length of y: %d \n',j,k);
    end
end