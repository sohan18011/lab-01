kclc;
close all;
clear all;
 
n = input('Data limit : ');
for i=1:1:n
S1(i)=input('Data (x): ');
end
 
for i=1:1:n
S2(i)=input('Data (y): ');
end;
x = 0;
y = 0;
xy = 0;
x2 = 0;
x2y = 0;
x3 = 0;
x4 = 0;
for i=1:1:n
   x =  x + S1(i);
   y = y + S2(i);
   xy = xy + S1(i)*S2(i);
   x2 = x2 + S1(i)*S1(i);
   x2y = x2y +  S1(i)*S1(i)*S2(i);
   x3 = x3 +  S1(i)*S1(i)*S1(i);
   x4 = x4 + S1(i)*S1(i)*S1(i)*S1(i);
end
 
c=n*(x2*x4-x3*x3)+x*(x3*x2-x*x4)+x2*(x*x3-x2*x2);
a0=y*(x2*x4-x3*x3)+x*(x2y*x3-xy*x4)+x2*(xy*x3-x2*x2y);
a0=a0/c;
 
a1=n*(xy*x4-x3*x2y)+y*(x3*x2-x*x4)+x2*(x*x2y-xy*x2);
a1=a1/c;
 
a2=n*(x2y*x2-xy*x3)+x*(xy*x2-x*x2y)+y*(x*x3-x2*x2);
a2=a2/c;
 
for i=1:1:n
    S3(i)=a0+a1*S1(i)+a2*S1(i)*S1(i);
end
%fprintf('The fit equation is \n y = %f + %f*x + %f*x^2',a0,a1,a2); 
plot(S1,S2);
hold on;
plot(S1,S3,'green');
 
xlabel('X');
ylabel('Y');
title('Curve Fitting: Parabola');
