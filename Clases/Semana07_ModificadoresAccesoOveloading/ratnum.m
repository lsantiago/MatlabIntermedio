classdef ratnum < handle
    % RATNUM -- class for rational numbers
    
    % properties for the class
    properties (Access=protected)
        n = 1 % Numerador
        d = 1 % Denominador
    end
    
    methods
        function r = ratnum(numerator, denomenator)
        % Usare: r = ratnum(numerator, denomenator)
        % Purpose: Constructor for radical number objects
        % Input: numerator   -- numerator for rational number
        %        denomenator -- denomenator for rational number
        % Output: r -- rational number object
            r.n = numerator;
            r.d = denomenator;
        end
        
        function disp(r)
        % Usage: disp(r)
        % Purpose: display a rational number object
        % Input: r -- rational number object
        % Outpu: display the rational number
            if r.d ~= 1
                fprintf('%d/%d = %f\n', r.n, r.d, r.n/r.d);
            else
                fprintf('%d\n', r.n);
            end
        end
        
        function r = plus(r1, r2)
        % Usage: r = add(r1, r2)
        % Purpose: add two rational numbers
        % Inputs: r1 -- rational number object
        %         r2 -- rational number object
        % Output: r -- Sum of r1 and r2 as a rational number object
        % r1.n        r2.n     (r1.n * r2.d) + (r2.n * r1.d)
        % ----     + -----  =  ------------------------------
        % r1.d        r2.d       r1.d * r2.d
            r = ratnum((r1.n*r2.d)+(r2.n*r1.d), r1.d*r2.d);
        end
        
        function r = mtimes(r1, r2)
        % r1.n        r2.n     r1.n * r2.n
        % ----     + -----  =  --------------
        % r1.d        r2.d       r1.d * r2.d    
            
            r = ratnum(r1.n * r2.n, r1.d * r2.d);
        end
        
        function r = mrdivide(r1, r2)
        % r1.n        r2.n       r1.n * r2.d
        % ----    /   -----  =  --------------
        % r1.d        r2.d       r1.d * r2.n
            r = ratnum(r1.n * r2.d, r1.d * r2.n);
        end
        
        
        function n = getN(r)
        % Usage: n = getN(r)
        % Purpose: Get the numerator of a rational number object
        % Input: r -- rational number object
        % Output: n -- the value of the numerator
            n = r.n;
        end
        
        function r = setN(r, numerator)
        % Usage: r = setN(r, numerator)
        % Purpose: Set the numerator of a rational number object
        % Input: r -- rational number object
        %        numerator -- new numerator value
        % Output: r -- reset rational number object
            r.n = numerator;
        end
    end
end