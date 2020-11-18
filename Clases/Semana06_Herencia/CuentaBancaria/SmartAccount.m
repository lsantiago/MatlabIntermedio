classdef SmartAccount < Account
    methods
        function Close(obj)
            obj.Withdraw(obj.Balance)
            disp('account closed')
        end
    end
end