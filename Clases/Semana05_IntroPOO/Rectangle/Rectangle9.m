classdef Rectangle9 < handle
    properties
        width;
        height;
    end
    
    methods
        function obj = Rectangle9(w, h)
            obj.width = w;
            obj.height = h;
        end
        
        function scale(obj, n)
            obj.width = n * obj.width;
            obj.height = n * obj.height;
        end
    end
    
end

% r = Rectangle9(3, 2)
% r2 = r
% r2.scale(2)
% r2
% r