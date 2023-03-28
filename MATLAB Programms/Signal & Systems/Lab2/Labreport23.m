clc;
clear all;
close all;

n=input('How many inputs: ');
for i=1:1:n
    y(i)=input('Input: '); %giving values of y axis
end

a=input('Enter zero index: ');
p=1-a;
for i=1:1:n
    x(i)=p; %rearranging x axis
    p=p+1;
end

subplot(2,1,1)
stem(x,y)
xlabel('Time');
ylabel('Amplitude');
title('Main Function')

for i=1:1:n
    x(i)=x(i)*-1;
end
subplot(2,1,2)
stem(x,y)
xlabel('Time');
ylabel('Amplitude');
title('Time Revarsal Function')
