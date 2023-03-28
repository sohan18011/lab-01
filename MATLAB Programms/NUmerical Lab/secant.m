clc;
close all;
clear all;
xl=0;
xu=1;
er=input('Enter an error: ');
for i=1:1:100
    y1=exp(-xl)-xl;
    y2=exp(-xu)-xu;
    xr(i)=(((y2*xl)-(y1*xu))/(y2-y1));
    error=abs((xr(i)-xu)/xr(i))*100;
    xl=xu;
    xu=xr(i);
    if(error<=er)
        break;
    end
end
error
fprintf('The root is : %f ',xu);


