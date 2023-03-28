clc;
clear all;
close all;
syms z;
syms a;

b=z/(z-a);
c=iztrans(b);
disp(c);
pretty(c);