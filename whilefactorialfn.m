function [f] =whilefactorialfn(n)
%this program computes factorial using a while loop... :)
    f=1;

    while n>1
        f=f*n;
        n=n-1;
    end
end

