clc;
close all;
clear all;

syms n;
syms q;

b=3*n+q^n+3;
p=ztrans(b);
disp(p);
pretty(p)
