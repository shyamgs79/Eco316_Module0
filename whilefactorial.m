n=150;

f=1;

while n>1
    f=f*n;
    n=n-1;
    if f>9.99e+20
        disp('factorial already too large, exiting the loop')
        n
        break
    end       
end

%before the loop starts: n=5, f=1;
%at the end of the first iteration: f=5, n=4
%at the end of the second iteration: f=20, n=3
%at the end of the third iteration: f=60, n=2
%at the end of the fourth iteration: f=120, n=1

    
