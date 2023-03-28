% function: x^3-13x-12

clear all;
close all;
clc;
error = input('Enter the percentage of error: ');

x(1)=4.5;
x(2)=5.5;
x(3)=5;
for i=2:1:6
    h0=x(i)-x(i-1);
    h1=x(i+1)-x(i);
    f0=x(i-1)^3-13*x(i-1)-12;
    f1=x(i)^3-13*x(i)-12;
    f2=x(i+1)^3-13*x(i+1)-12;
    d0=(f1-f0)/h0;
    d1=(f2-f1)/h1;
    a=(d1-d0)/(h1+h0);
    b=a*h1+d1;
    c=f2;
    
    x(i+2)=x(i+1)+((-2*c)/(b+sqrt(b*b-4*a*c)));
    root = x(i+2);
    err = abs((x(i+2)-x(i+1))/x(i+2))*100;
    if (err <= error)
        break;
    end
end

root
err