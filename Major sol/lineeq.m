function[a b] = lineeq(def_slope,increment,point)
%input format def_slope && increment are values of angles in radians
%point is a array of length 2, with the common representatin of x & y co-orinates
    a = tan(def_slope + increment);
    b = point(2) - a*point(1);

end