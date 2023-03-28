#include <bits/stdc++.h>
using namespace std;
double f1x;

double fofx(double x)
{
    return -(.1)*x*x*x*x-(.15)*x*x*x-(.5)*x*x -(.25)*x+1.2;
}

double fdfx(double x)
{
    return -(.4)*x*x*x-(.45)*x*x-x-.25;
}

double error(double val)
{
    double ans=(fabs(f1x-val)/f1x)*100;

    return (ans>0)?ans: (ans)*(-1);
}

int main()
{

    double x,fx,h,x0,x1,fd,bd,cd,Err1,Err2,Err3;
    cout<<"Give the value of x & h "<<endl;
    cin>>x>>h;

    x0 = x-h;
    x1 = x+h;

    fx = fofx(x);
    f1x = fdfx(x);

    fd = (fofx(x1) - fx )/h;
    bd = (fx-fofx(x0))/h;
    cd = (fofx(x1) - fofx(x0) )/(2*h);



    Err1 = error(fd);
    Err2= error(bd);
    Err3= error(cd);

    cout<<"Value of x using  Forward Difference : "<<fd<<"   Error:  "<<Err1<<"%"<<endl;
    cout<<"Value of x of Backward Difference: "<<bd<<"   Error:  "<<Err2<<"%"<<endl;
    cout<<"Value of x  Central Difference : "<<cd<<"   Error:  "<<Err3<<"%"<<endl;









}

