%False Position Method%

xl=input('Lower value :');
xu=input('Upper value :');
Error=5;
for k=1:1:100

fxl =xl*exp(xl)-1;
fxu =xu*exp(xu)-1;
xr(k)=(fxu*xl-fxl*xu)/(fxu-fxl);

if(fxl*fxu<0)
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

