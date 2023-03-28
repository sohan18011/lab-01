clc;
clear all;
close all;

n=input('Enter number of data :');
fprintf('Enter value of x :\n');
for i=1:1:n
    x(i)=input('Value :');
end
fprintf('Enter value of y :\n');
for i=1:1:n
    y(i)=input('value :');
end
%subplot(2,1,1)
plot(x,y);
title('Main Graph');
hold on
X=0;
Y=0;
xy=0;
x2=0;
for i=1:1:n
    X=X+x(i);
    Y=Y+y(i);
    xy=xy+(x(i)*y(i));
    x2=x2+(x(i)*x(i));
end
a0=(((xy*X)-(Y*x2))/((n*x2)-(X*X)));
a1=((Y-n*a0)/X);

for i=1:1:n
    y(i)=(a0+(a1*x(i)));
end
fprintf('The correct equation is  y = %f +%f*x\n',a0,a1);
fprintf('The updated value of y are\n');
for i=1:1:n
    fprintf('%f\n',y(i));
end


%subplot(2,1,2)
plot(x,y)
%title('Updated Graph');