%Bisection Method%

xl=input('Lower value :');
xu=input('Upper value :');
Error=input('Give the Error Rate : ');
for k=1:1:100
xr(k)=(xl+xu)/2 ;
Fxl =xl*exp(xl)-1;
Fxr =xr(k)*exp(xr(k))-1;
if(Fxl*Fxr<0)
    xu=xr(k);
else
    xl=xr(k);
end
if(k>1)
    err= abs(((xr(k)-xr(k-1))/xr(k))*100);
end
if(k>1)
    if(err<=Error)
        break;
    end
end
end
fprintf('The Root is =%f \n',xr(k))
fprintf('The Error Rate =%f\n',err)
fprintf('Number Of Step =%d\n',k)

