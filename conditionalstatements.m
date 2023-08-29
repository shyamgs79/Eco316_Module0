
y=3;
x=2;
% is the first value less than the second value
z0=y<x;
% is the first value less than or equal to the second value
z1=y<=x;
% is the first value greater than the second value
z2=y>x;
% is the first value greater than or equal to the second value
z3=y>=x;
% are these two values equal?
z4=y==x;
% are these values unequal?
z5=y~=x;

% and, or, not, 
x=17;

z6= x>=1 || x<=10; % z6= 1<=x<=10

z7= ~(((x<20 && y>12) || (x==2 || y==13) )&& y<12);

K=rand(5);
L=K<0.5;
K2=rand(5);
L2=K2>0.5;
M=L&L2;
z8=all(M);

yy=sum(M);
yyy=mean(M);
