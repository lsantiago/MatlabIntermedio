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
        
        function movUp(obj,u)
            close all
            obj.pntA.y = obj.pntA.y + u;
            obj.pntB.y = obj.pntB.y + u;
            figure;
            plot([obj.pntA.x, obj.pntB.x], ...
                [obj.pntA.y, obj.pntB.y], "r*-");
            
            axis([-10 10 -10 10])
        end
      
        function movDown(obj,u)
            close all
            obj.pntA.y = obj.pntA.y - u;
            obj.pntB.y = obj.pntB.y - u;
            figure;
            plot([obj.pntA.x, obj.pntB.x], ...
                [obj.pntA.y, obj.pntB.y], "r*-");
            
            axis([-10 10 -10 10])
        end
        
        function movLft(obj,u)
            close all
            obj.pntA.x = obj.pntA.x - u;
            obj.pntB.x = obj.pntB.x - u;
            figure;
            plot([obj.pntA.x, obj.pntB.x], ...
                [obj.pntA.y, obj.pntB.y], "r*-");
            
            axis([-10 10 -10 10])
        end
        
        function movRgt(obj,u)
            close all
            obj.pntA.x = obj.pntA.x + u;
            obj.pntB.x = obj.pntB.x + u;
            figure;
            plot([obj.pntA.x, obj.pntB.x], ...
                [obj.pntA.y, obj.pntB.y], "r*-");
            
            axis([-10 10 -10 10])
        end
        
    end
end