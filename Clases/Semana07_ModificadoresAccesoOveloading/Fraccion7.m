classdef Fraccion7 < handle
    properties(SetAccess = private)
        numerador = []
        denominador = []
    end
    
    methods (Hidden = true)
        function reducir(obj)
            % primero revisa que se hayan dado datos
            if isempty(obj.numerador) || isempty(obj.denominador)
                return
            end
            
            % se verifica si alguno es negativo
            es_negativo = obj.numerador * obj.denominador < 0;
            
            % se calcula el más. comun divisor de los valores absolutos
            mcd = gcd(abs(obj.numerador), abs(obj.denominador));
            
            % se reducen los números
            obj.numerador = abs(obj.numerador) / mcd;
            obj.denominador = abs(obj.denominador) / mcd;
            
            % si alguno es negativo se cambia de signo el numerador
            if es_negativo
                obj.numerador = -obj.numerador;
            end
            
        end
    end
    
    methods
        function setNumerador(obj, numen)
            if mod(numen, 1) ~= 0 || ischar(numen) == 1
                error('El numerador debe ser un número entero')
            end

            obj.numerador = numen;
            obj.reducir()
        end

        function setDenominador(obj, denom)
            if denom == 0 || mod(denom, 1) ~= 0 || ischar(denom) == 1
                error('El denominador debe ser un número entero distinto de 0')
            end

            obj.denominador = denom;
            obj.reducir()
        end

        function Resultado = calcFraccion(obj)
            Resultado = obj.numerador / obj.denominador;
        end

        function obj = Fraccion7(num, den)
            obj.setNumerador(num)
            obj.setDenominador(den);
        end
        
        function salida = plus(r1, r2)
            salida = Fraccion7((r1.numerador*r2.denominador)+ ... 
                (r1.denominador*r2.numerador), r1.denominador*r2.denominador);
        end
        
        % cambio de signo de fracción
        function salida = uminus(obj)
            salida = Fraccion7(-obj.numerador, obj.denominador);
        end
        
        function salida = minus(r1, r2)
            salida = r1.plus(-r2);
        end
        
        % para la multiplicación
        function salida = mtimes(r1, r2)
            salida = Fraccion7(r1.numerador * r2.numerador, ...
                r1.denominador * r2.denominador);
        end
        
        % para la división
        function salida = mrdivide(r1, r2)
            salida = Fraccion7(r1.numerador * r2.denominador, ...
                r1.denominador*r2.numerador);
        end
        
        
        function disp(obj)
            fprintf('%d/%d\n\n', obj.numerador, obj.denominador);
        end
    end

end