clear all;
close all;
clc;
n=input('Please enter size of array 1: ');
for i=1:1:n
    y(i)=input('Press a new value: ');
end
m=input('Enter 0 index: ');
p=1-m;
q=p;
for i=1:1:n
    x(i)=p;
    p=p+1;
end
r=p-1;
r11=r;
n2=input('Please enter size of array 2: ');
for i=1:1:n2
    y2(i)=input('Press a new value: ');
end
m2=input('Enter 0 index: ');
p2=1-m2;
q2=p2;
for i=1:1:n2
    x2(i)=p2;
    r=p2;
    p2=p2+1;
end
k=1;
for i=n2:-1:1
    y3(k)=y2(i);
    k=k+1;
end
for i=1:1:n2
    x3(i)=-r;
    r=r-1;
end
SN=n+n2-1;
for i=1:1:SN
    z(i)=0;
end
for i=n2:-1:1
    for j=1:1:n
        z(i+j-1)=y(j)*y3(i)+z(i+j-1);
    end
end
in=q+q2;
for i=1:1:SN
    x4(i)=in;
    in=in+1;
end
z
stem(x4,z,'filled');