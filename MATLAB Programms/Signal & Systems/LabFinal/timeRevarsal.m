close all;
clear all;
clc;
n=input('Enter the number of element: ');
for i=1:1:n
    y(i)=input('Number: ');
end
m=input('Enter zero index: ');
p=1-m;
for i=1:1:n
    x(i)=p;
    p=p+1;
end

   for i=1:1:m
       x(i)=x(i)*-1;
       end 
   
      
stem(x,y);