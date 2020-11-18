% https://www.youtube.com/watch?v=3Xi9iN6o0nQ&list=PL9JsYyM1MWfS6-QGMjrTLpUt1dTATK4nO&index=6

classdef Account < handle
    properties
        Balance = 0
    end
    
    events
        InsufficientFunds
    end
    
    methods
        function Deposit(obj, amount)
            obj.Balance = obj.Balance + amount;
        end
        
        % retirar
        function Withdraw(obj, amount)
            if amount <= obj.Balance
                obj.Balance = obj.Balance - amount;
            else
                notify(obj, 'InsufficientFunds');
                disp('insufficient funds')
            end
        end
    end
end