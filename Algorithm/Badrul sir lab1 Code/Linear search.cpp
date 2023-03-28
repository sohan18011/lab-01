#include<iostream>
using namespace std;

int main()
{
    cout<<"Enter The Size Of Array:   ";
    int size;
    cin>>size;


    int array[size], key,i;
    cout<<"Enter "<<size<<" Element: ";
    for(int j=0; j<size; j++)
    {

        cin>>array[j];
    }

    for(int a=0; a<size; a++)
    {
        cout<<"array[ "<<a<<" ]  =  ";
        cout<<array[a]<<endl;
    }

    cout<<"Enter Key To Search  in Array  ";
    cin>>key;

    for(i=0; i<size; i++)
    {
        if(key==array[i])
        {
            break;
        }
    }


    if(i != size)
    {
        cout<<"KEY FOUND at index :  "<<i;
    }
    else
    {
        cout<<"KEY NOT FOUND in Array  ";
    }
    cout<<endl;
    return 0;
}
