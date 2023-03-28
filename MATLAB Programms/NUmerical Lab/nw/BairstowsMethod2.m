close all;
clear all;
clc;

error = input('Enter error in percentage : ');

r=-1;
s=-1;

a(6)=1;
a(5)=-3.5;
a(4)=2.75;
a(3)=2.125;
a(2)=-3.875;
a(1)=1.25;

b(6)=a(6);
b(5)=a(5)+r*b(6);
c(6)=b(6);
c(5)=b(5)+r*c(6);

for i=4:-1:1
    b(i) = a(i)+r*b(i+1)+s*b(i+2);
    c(i) = b(i)+r*c(i+1)+s*c(i+2);
end

for i=1:1:100
    delr = (c(4)*b(1)-c(3)*b(2)) / (c(3)*c(3)-c(2)*c(4));
    dels = (c(2)*b(2)-c(3)*b(1)) / (c(3)*c(3)-c(2)*c(4));
    r = r+delr;
    s = s+dels;
   
    b(5)=a(5)+r*b(6);
    c(5)=b(5)+r*c(6);
    for j=4:-1:1
        b(j)=a(j)+r*b(j+1)+s*b(j+2);
        c(j)=b(j)+r*c(j+1)+s*c(j+2);
    end
	
   err1 = (delr/r)*100;
   err2 = (dels/s)*100;
   if ((err1<=error) && (err2<=error))
       break
   end
end
r
s
err1
err2