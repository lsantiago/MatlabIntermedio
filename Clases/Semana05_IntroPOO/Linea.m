classdef Linea < handle
    properties
        pntA
        pntB
    end
    
    methods
        function obj = Linea(pntA, pntB)
            obj.pntA = pntA;
            obj.pntB = pntB;
        end
        
        function resp = calcDistancia(obj)
            resp = sqrt((obj.pntB.x - obj.pntA.x)^2 + ...
                (obj.pntB.y - obj.pntA.y)^2);
        end
        
        function graficar(obj)
            plot([obj.pntA.x, obj.pntB.x], ...
                [obj.pntA.y, obj.pntB.y], "r*-");
        end
        
        % mueva a la izquierda, n posiciones
        % mueva a la derecha, ...
        % muesva hacia abajo, ...
        % mueva hacia arriba, ..
        
    end
end