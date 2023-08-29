x=3;
x=x+2;
y=2;
%branching

if y>=x
    z=y/x;
    a=1;
else
    z=x/y;
    a=0;
    b=4;
end


choice=7;

if choice==1
    y=12;
elseif choice ==2
    y=13;
elseif choice==3
    y=14;
else
    y=8;
end

if choice <5
    valid=1;
end


if choice<1
    c=1;
elseif choice <5
    c=2;
elseif choice <8
    c=3;
elseif choice<11
    c=4;
else
    c=18;
end
