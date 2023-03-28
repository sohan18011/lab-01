close all;
clear all;
clc;
m = input('Enter the number of data for first signal : ');
for i=1:1:m
    y1(i)=input('Data:');
end
n = input('zero index:');
p = -n+1;
for i=1:1:m
    x1(i) = p;
    p = p+1;
end
subplot(2,2,1);
stem(x1,y1);
title('1st Signal') ;
a = input('\nEnter number of data for the 2nd signal:');
for i=1:1:a
    y2(i)=input('Data: ');
end
b = input('Enter zero index : ');
c = -b+1;
for i=1:1:a
    x2(i) = c;
    c = c+1;
end
subplot(2,2,2);
stem(x2,y2);
title('Second Signal') ;
len = min(min(x1),min(x2)):max(max(x1),max(x2));
j=1;
for i=1:1:length(len)
    if(j<=m)
        if(len(i)==x1(j))
            s1(i)=y1(j);
            j=j+1;
        else
            s1(i)=0;
        end
    else
        s1(i)=0;
    end
end
k=1;
for i=1:1:length(len)
    if(k<=a)
        if(len(i)==x2(k))
            s2(i) = y2(k);
            k = k+1;
        else
            s2(i) = 0;
        end
    else
        s2(i) = 0;
    end
end
mul = s1 .* s2 ;
ad = s1 + s2 ;
subplot(2,2,3);
stem(len,ad);
title('Addition');
subplot(2,2,4)
stem(len,mul);
title('Multiplication');
 
