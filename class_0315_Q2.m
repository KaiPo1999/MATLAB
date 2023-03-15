clear

A = [1,1;1,2];
C = [1,1];

%%eig(Ac)=(-1,-2)  求K and L 




A_bar=A';
B_bar=C';
Omega=[B_bar,A_bar*B_bar];
iOmega=inv(Omega);
alphfa_A=A_bar^2+3*A_bar+2*eye(2);
Temp=iOmega;
q=[0,1];
K=-iOmega(end,:)*alphfa_A
Ac_bar=A_bar+B_bar*K;
eig(Ac_bar)
L=-K'
A_o=A-L*C;
eig(A_o)