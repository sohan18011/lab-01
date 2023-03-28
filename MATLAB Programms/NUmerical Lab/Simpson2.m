%simpson 3/8 Rule
clear all;
close all;
clc;
b=0.8;
a=0;
h=(b-a)/3;
c=a+h;
d=c+h;
n=input('Enter maximum order of the function: ');
fprintf('Enter the coefficient like a0 to an\n\n');
for i=1:1:n+1;
    x(i)=input('Coefficient: ');
end
fa=0;
fb=0;
fc=0;
fd=0;
	facb=0;
faca=0;
for i=1:1:n+1
    fa=fa+x(i)*power(a,i-1);
    fb=fb+x(i)*power(b,i-1);
    fc=fc+x(i)*power(c,i-1);
    fd=fd+x(i)*power(d,i-1);
    facb=facb+x(i)*(power(b,i)/i);
    faca=faca+x(i)*(power(a,i)/i);
end
fa;
fb;
fc;
fd;
fac=facb-faca;
I=h*(3/8)*((fa+3*fc+3*fd+fb))
err=((fac-I)/fac)*100;
fprintf('Error=%f%%\n',err);

