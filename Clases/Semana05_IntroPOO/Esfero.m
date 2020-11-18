classdef Esfero < handle
    properties
        modelo;
        color;
        punta;
        carga;
        tapado;
    end
    
    methods
        % constructor
        function obj = Esfero(modelo, color, punta, carga, tapado)
            if nargin > 0
                obj.modelo = modelo;
                obj.color = color;
                obj.carga = carga;
                obj.punta = punta;
                obj.tapado = tapado;
            end
        end
        
        function obj = rayar(obj)
            if obj.tapado == true
                error("No se puede rayar, el esfero está tapado")
            else
                disp("Rayando........")
            end
        end
        
        
        function obj = tapar(obj)
            obj.tapado = true;
        end
    end
end