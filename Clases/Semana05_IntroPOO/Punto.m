classdef Punto < handle
    properties
        x
        y
    end
    
    methods
        function obj = Punto(x, y)
            if nargin > 0
                obj.x = x;
                obj.y = y;
            else
                error("Falta información para crear un punto")
            end
        end
        
        % en qué cuadrante está??
        
    end
end