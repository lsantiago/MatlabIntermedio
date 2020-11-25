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
            close all
            figure;
            plot([obj.pntA.x, obj.pntB.x], ...
                [obj.pntA.y, obj.pntB.y], "r*-");
            axis([-10 10 -10 10])
        end
        
        function movUp(obj,u)
            obj.pntA.y = obj.pntA.y + u;
            obj.pntB.y = obj.pntB.y + u;
            obj.graficar();
        end
      
        function movDown(obj,u)
            obj.pntA.y = obj.pntA.y - u;
            obj.pntB.y = obj.pntB.y - u;
            obj.graficar();
        end
        
        function movLft(obj,u)
            obj.pntA.x = obj.pntA.x - u;
            obj.pntB.x = obj.pntB.x - u;
            obj.graficar();
        end
        
        function movRgt(obj,u)
            obj.pntA.x = obj.pntA.x + u;
            obj.pntB.x = obj.pntB.x + u;
            obj.graficar();
        end
        
    end
end