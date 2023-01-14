test data

x = [-3 -3 -2 -2 -2 -1 -1 0 0 1 1 1 1 2 2 2 3 3];
y = [0 1 -2 -1 2 0 -3 -2 1 2 1 0 -3 -1 0 1 -3 3];

x y -- array
j k -- x y length
scatter
plot 
hold on
i = running for loop-1
slope
big-s -- storing big slope
location -- location of point offering big_s;


for loop reversal  towards left
    loc_temp_l -- for temp loc of y(i) < y(location_r) -- set default -- 0;
    loc_temp_m -- for temp loc of y(i) ==  y(location_r) -- set default -- 0;
        for loc_temp_m if default is erased do not update the loc_temp_m -- to avoid drawing a line to a farther most point than the nearer one.
    loc_temp_h -- for temp loc of y(i) > y(location_r) -- set default -- 0;

    assigning of var storage for slope memory
        3 assignment operators
            small_s -- for y(i) < y(location_r)
            mod_s -- for y(i) == y(location_r)
            top_s -- for y(i) > y(location_r)
    assignement of location_r
            checking for default value of loc_temp_l
                if no -- go with that
                if yes -- check for default value of loc_temp_m
                    if no go with that 
                    if yes go with loc_temp_h 
                        either of the case must always go valid, as we are taking the input atleast once.
    

should work on -INF for the right termination case
should work on tackling +Inf case for other than left edge
    Dervive special case for top_s = Inf 
        prob araises when the inf point is the second point, so top_s  get declared to Inf & never gets updated for the condition y(i) > y(location_r) && loc_temp_h ~= 0
            so for loc_temp_h ~= 0 && top_s == Inf
                top_s = slope;
                end
                else loc_temp_h ~=0;
                top_s = slope;
                end

