%BairStaw Method%
clc;
clear all;
close all;

Error=input('Error Rate = ');
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
     b(i)=a(i)+r*b(i+1)+s*b(i+2);
     c(i)=b(i)+r*c(i+1)+s*c(i+2);
 end
 for i=1:1:100
     dr=(b(1)*c(4)-b(2)*c(3))/(c(3)*c(3)-c(2)*c(4));
     ds=(c(2)*b(2)-c(3)*b(1))/(c(3)*c(3)-c(2)*c(4));
     
     r=r+dr;
     s=s+ds;
     
     Err1=(abs(dr/r))*100;
     Err2=(abs(ds/s))*100;
     
     if((Err1<=Error )&& (Err2<=Error))
         break;
     end     
    b(5)=a(5)+r*b(6);
    c(5)=b(5)+r*c(6);
    for j=4:-1:1
        b(j)=a(j)+r*b(j+1)+s*b(j+2);
        c(j)=b(j)+r*c(j+1)+s*c(j+2);
    end
    end
   Root1=(r+ sqrt(r*r+4*s))/2;
   Root2=(r- sqrt(r*r+4*s))/2;
   
   fprintf('Error1=%f \n Error2=%f \n r=%f  s=%f \n RooT1=%f Root2=%f ',Err1,Err2,r,s,Root1,Root2);
     
     
     
     
     
     
     
     
     
     
     
     
     

