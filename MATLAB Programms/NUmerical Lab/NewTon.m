%NewTon Raphsan Model
Error=input('Error Rate : ');
xi=0; 
for i=1:1:100
   
 fx=exp(-xi)-xi;
 dx=-exp(-xi)-1;
 x1=xi- (fx/dx) ; 
 err=abs(((x1-xi)/x1)*100);
 if(err<=Error)
     break;
 end
 xi=x1;
end
fprintf('The Root is = %f\n',x1);
fprintf('The Error is = %f\n',err);
fprintf('Number of step = %d\n',i);
    