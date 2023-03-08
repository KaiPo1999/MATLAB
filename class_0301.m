clear
clc
close all
    
B=[0;1;1];

%%when x(t)=f(x,t)
%By using Eular method: x[k+1]=x[k]+f(x[k],k)*DT

t=linspace(0,10,1001);
DT=0.01;
X(1,:)=randn(1,3);

for i=1:1001

    f_now=my_f(X(i,:));
    %temp=X(i,:)'+(A*X(i,:)')*DT;
    temp=X(i,:)+f_now*DT;
    X(i+1,:)=temp';

end


function [output] = my_f(X_now)
%output would be 1x3

% A=[ 1,2,1;
%     0,1,2;
%     3,1,1];

A=diag([-1,-2,-100])

x = X_now';
f_trans = A*x;
output = f_trans';

end