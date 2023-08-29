
%variables (they need not vary!)
x=12
x=12+3;
x=x+4; %you can add a variable to itself!

%constants (all numbers typed as numbers) and built in constants
6.5;
e=pi;
f=realmin;
g=realmax;
h=eps;
j=inf;

%vectors, matrices, arrays - 
A=zeros(3); %Matlab assumes square by default
A2=zeros(17,1);
B=ones(2,3);
C=eye(4);
D=rand(5);
E=randi([4,7],3,2);

%specifying arrays element by element
F=[2,3;4,5; 6,7];

%referring to individual elements by their index or subscript
t1=F(4);
t2=F(3,2);
g=2;
h=2;
t3=F(g,h);


%Simple arithmetic: +, - , *, /, ^
a= 2+3;

% Simple math functions: sin, rand, log, exp, mod, fix, floor, ceil, round
b=sin(30);
c=sind(30);
d=floor(3.7);



%array operations: +, -, * etc. also .* and ./

%further array operations: max, min, sum, mean, std, var, sort
H=rand(3);
I=mean(H);
J=mean(H,2);
[K,ind]=max(J);

%the colon
L=2:3:18;
M=H(:,2);


%Flow control - branching conditional statements - if elseif else end
x=17;

if x>3
    y=12;
elseif x>2
    y=12;
else
    y=10;
end
   
%loops - for, while
%nested loops

P=rand(15);

ctr=0;
sum=0;
prod=1;

for i=1:15
    for j=1:15
        if P(i,j)>0.5
            ctr=ctr+1;
            sum=sum+P(i,j);
            prod=prod*P(i,j);
        end
    end
end
            
% smart indent and comment short cuts

%functions - write a program first; make it a function











