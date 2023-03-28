clc;
clear all;
close all;
x=[1 2 3 5];
y=[5 6 7 9];
z=[3 4 8 5];
figure
stem(x,y);
hold on
plot(x,y);
xlabel('Time');
ylabel('Amplitude');
title('Graphical Representation');