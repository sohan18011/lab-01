clc;
clear all;
close all;
n=input('Enter number of terms:\n');
fprintf('Coeficient of x:\n');
for i=1:1:n
    a(i)=input('Enter: ');
end
x=input('Enter value of x : ');
h=input('Enter value of h : ');
for i=1:1:n-1
    b(i)=a(i+1)*i;
end
x1=x-h;
x2=x;
x3=x+h;
y1=0,y2=0,y3=0,y=0,p1=1,p2=1,p3=1,p=1;
for i=1:1:n
    
    y1=y1+(a(i)*p1);
    p1=x1*p1;
end
for i=1:1:n
    y2=y2+(a(i)*p2);  
    p2=x2*p2;
end
for i=1:1:n
    y3=y3+(a(i)*p3);
    p3=x3*p3;
end
for i=1:1:n-1
    y=y+(b(i)*p);
    p=p*x;
end
z1=(y3-y2)/h;
fer=((y-z1)/y)*100;
if(fer<0)
    fer=fer*(-1);
end
fprintf('For forward error: %.1f\n',fer);
z2=(y2-y1)/h;
ber=((y-z2)/y)*100;
if(ber<0)
    ber=ber*(-1);
end
fprintf('For backward error: %.1f\n',ber);
z3=(y3-y1)/(2*h);
cer=((y-z3)/y)*100;
if(cer<0)
    cer=cer*(-1);
end
fprintf('For central error: %.1f\n',cer);




