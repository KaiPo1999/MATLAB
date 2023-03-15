clear

A = [1,3;0,4]    
C = [1,1]   


A_bar=A';
B_bar=C';
Omega=[B_bar,A_bar*B_bar]
iOmega=inv(Omega)
alphfa_A=A_bar^2+2*A_bar+1*eye(2);
Temp=iOmega;
q=[0,1];
K=-iOmega(end,:)*alphfa_A
Ac_bar=A_bar+B_bar*K;
eig(Ac_bar)
L=-K';
A_o=A-L*C
eig(A_o)