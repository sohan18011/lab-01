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
plot(x,y)
xlim([-10,10]);
ylim([-10,10]);
xlabel('Time');
ylabel('Amplitude');
title('Stem Function')

i_d =input('enter 1 for decrease or increase:');
q = input('enter scaling value:');
if(i_d==1)
    for i=1:1:n
        x(i)=x(i)*q;
    end
else
    for i=1:1:n
        x(i)=x(i)/q;
    end
end
subplot(2,1,2);
plot(x,y)
xlim([-10,10]);
ylim([-10,10]);
xlabel('Time');
ylabel('Amplitude');
title('Stem Function')
