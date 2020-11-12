% Definiendo un constructor

classdef Rectangle3
    properties
        width;
        height;
    end
    
    methods
        function obj = Rectangle3(w, h)
            obj.width = w;
            obj.height = h;
        end
    end
end

%%
% r = Rectangle3(3, 2)
% r = Rectangle % Error, por falta de argumentos
% 
