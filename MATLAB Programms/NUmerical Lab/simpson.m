clear all;
close all;
clc;
b=0.8;
a=0;
c=a+(a+b)/2;
n=input('Enter maximum order of the function: ');
fprintf('Enter the coefficient like a0 to an\n\n');
for i=1:1:n+1;
    x(i)=input('Coefficient: ');
end
fa=0;
fb=0;
fc=0;
	facb=0;
faca=0;
for i=1:1:n+1
    fa=fa+x(i)*power(a,i-1);
    fb=fb+x(i)*power(b,i-1);
    fc=fc+x(i)*power(c,i-1);
    facb=facb+x(i)*(power(b,i)/i);
    faca=faca+x(i)*(power(a,i)/i);
end
fa;
fb;
fc;
fac=facb-faca;%integration
I=(b-a)*((fa+4*fc+fb)/6)%Simpson
err=((fac-I)/fac)*100;
fprintf('Error=%f%%\n',err);

