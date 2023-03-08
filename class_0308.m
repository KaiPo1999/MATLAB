clear
clc
close all

%Ackermann's formula
A=[1,1;1,2];
% A=[1,3;0,5];
B=[1,0]';
Omega=[B,A*B]
iOmega=inv(Omega);
%A_2=A^2;
eye_2=eye(2)
alphfa_A=A^2+11*A+30*eye(2);
Temp=iOmega;
q=[0,1];
K=-iOmega(end,:)*alphfa_A
A_c=A+B*K
eig(A_c)