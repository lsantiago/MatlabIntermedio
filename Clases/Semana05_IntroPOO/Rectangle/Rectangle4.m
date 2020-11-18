% Definiendo un método

classdef Rectangle4
    properties
        width;
        height;
    end
    
    methods
        function obj = Rectangle(w, h)
            obj.width = w;
            obj.height = h;
        end
        
        function p = get_perimeter(obj)
            p = 2*(obj.width + obj.height)
        end
        
        function obj = scale(obj, n)
            obj.width = n * obj.width;
            obj.height = n * obj.height;
        end
    end
end

%%
% r = Rectangle4(5, 2)
% per = r.get_perimeter()
% 
