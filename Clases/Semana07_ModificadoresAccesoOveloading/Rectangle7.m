% Definiendo un método privado

% Finalmente, una clase MATLAB puede tener una o más propiedades privadas, 
% es decir, propiedades que no deberían ser visibles (ni modificables) desde el exterior:
classdef Rectangle7
    
    properties(Access = private)
        width;
        height;
    end
    
    methods
        function obj = Rectangle7(w, h)
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
        
        function r = mtimes ( obj1 , obj2)
            if(isa ( obj1, 'Rectangle7') && isnumeric ( obj2 ))
                r = obj1.scale(obj2);
            elseif( isnumeric (obj1) && isa (obj2, 'Rectangle7'))
                r = obj2.scale(obj1) ;
            else
                error('One operator must be a rectangle and the other numeric') ;
            end
        end
    end
    
    methods(Static)
        function s = get_description()
            s = 'Clase para representar rectángulos';
        end
    end
end

%%
% Rectangle5.get_description()
    
% Un método estático está asociado a una clase, pero no a una instancia
% especifica de una clase
% Tenga en cuenta que un método estático no necesita una instancia de la clase como argumento.
% De esta forma, puede llamar a un método estático sin primero declarar
% un objeto:
