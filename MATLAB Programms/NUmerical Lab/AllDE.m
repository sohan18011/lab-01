%function: f(x,y)= -2x^3 + 12x^2 -20x + 8.5; 

clear all;
close all;
clc;

h = 0.5;
x(1)=0;
y(1)=1;
error(1)=100;

fprintf('Eulers method: \n');
for i=1:1:5
    y(i+1)=y(i)+slopeFunction(x(i),y(i))*h;
    x(i+1)=x(i)+h;
    error(i+1) = abs( (y(i+1)-y(i))/(y(i+1)) )*100;
    answer = y(i+1);
end
answer
plot(x,error,'linewidth',1);
hold on;
grid on;

fprintf('Heuns method: \n');
yh(1)=y(1);
for i=1:1:5 
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+slopeFunction(x(i),y(i))*h;
    yh(i+1)=yh(i)+(slopeFunction(x(i),y(i))+slopeFunction(x(i+1),y(i+1)))*h/2;
    error(i+1) = abs( (yh(i+1)-yh(i))/(yh(i+1)) )*100;
    answer = yh(i+1);
end
answer
plot(x,error,'linewidth',1);
hold on;

fprintf('Ralstons method: \n');
for i=1:1:5
    k1=slopeFunction(x(i),y(i));
    k2=slopeFunction(x(i)+(3*h)/4,y(i)+(3*k1*h)/4);
    y(i+1)=y(i)+(k1+2*k2)*h/3;
    error(i+1) = abs( (y(i+1)-y(i))/(y(i+1)) )*100;
    answer = y(i+1);
end
answer
plot(x,error,'linewidth',1);
hold on;


fprintf('Runge-kutta mehod: \n');
for i=1:1:5
    k1=slopeFunction(x(i),y(i));
    k2=slopeFunction(x(i)+h/2,y(i)+(k1*h)/2);
    k3=slopeFunction(x(i)+h,y(i)-(k1*h)+(2*k2*h));
    y(i+1)=y(i)+(k1+4*k2+k3)*h/6;
    error(i+1) = abs( (y(i+1)-y(i))/(y(i+1)) )*100;
    answer = y(i+1);
end
answer
plot(x,error,'linewidth',1);
hold on;

legend('Eulers','Heuns','Ralstons','Runge-kutta');