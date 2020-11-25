classdef Persona < handle
    properties
        nombre
        apellido
    end
    
    properties(Access=private)
        edad
    end
    
    methods
        function obj = Persona(nombre, apellido, edad)
           obj.nombre = nombre;
           obj.apellido = apellido;
           obj.edad = edad;
        end
        
        function setEdad(obj, edad)
            if edad >= 0
                obj.edad = edad;
            else
                error("La edad no puede ser negativa.")
            end
        end
        
        function val = getEdad(obj)
            val = obj.edad;
        end
        
    end
end

