classdef Square < Rectangle
    properties
    end
    
    methods
        function obj = Square(l)
            obj = obj@Rectangle(l, l)   ;
        end
        
        % También puedes sobre escribir un método especifico
        % en este caso, por motivos computacionales
        function p = get_perimeter(obj)
            p = 4 * obj.height;
        end
        
        function l = get_length(obj)
            l = obj.width;
        end
    end
end