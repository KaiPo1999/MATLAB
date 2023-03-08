clear
clc
close all

B = [0;1;1]


t = linspace(0,10,1001);
DT=0.01;
X(1,:)=randn(1,3);

for i=1:1001
    k_1   = my_f(X(i,:),t(i));
%
    x_k2 = X(i,:)+k_1*DT/2;
    k_2  = my_f(x_k2,t(i)+DT/2)
    X_k3 = X(i,:)+k_2*DT/2;
    k_3  = my_f(X_k3,t(i)+DT/2)
    x_k4 = x(i,:)+k_3*DT;
    k_4  = my_f(x_k4,t(i)+DT)

    delta_f = 1/6*(k_1+2*k_2+2*k_3+k_4);




    temp = X(i,:)+f_now*DT;
    X(i+1,:)=temp;
end

function [output] = my_f(x_now,y_now)


phi = pi/6;
v = [cos(6*pi*t_now+phi),-sin(6*pi*t_now+phi),0]';
A = diag([-1,-2,-10]);

x = x_now;
f_trans = A*x+v;
output = f_trans;

end
