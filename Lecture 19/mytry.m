classdef mytry

    properties
        name
    end
    properties(setAccess = private)
        place
    end

    methods
        function [out] = mytry(name)
            out.name = name;
        end
        function addPlace(self,value)
            self.place = value;
        end
        
    end

end