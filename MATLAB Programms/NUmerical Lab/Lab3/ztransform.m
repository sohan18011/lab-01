clc;
close all;
clear all;

syms n;
syms q;

b=5*n+q^n*n+3;
p=ztrans(b);
disp(p);
pretty(p)
