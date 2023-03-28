close all;
clear all;
clc;

size = input('enter the number of inputs: ');
for i=1:1:size
    y(i)=input('enter a value: ');
end
p = input('Enter the zero index: ');
n = 1-p;

Xz = 0;
z = sym('z');

for i=1:1:size
    Xz = Xz + y(i)*z^(-n);
    n = n+1;
end

display(Xz);