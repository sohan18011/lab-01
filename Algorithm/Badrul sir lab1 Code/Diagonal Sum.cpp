#include<stdio.h>

int main()
{

    int a[100][100],i,j,sum=0,m,n;

    printf("\nEnter the row and column of matrix: ");
    scanf("%d %d",&m,&n);

    printf("\nEnter the elements of matrix: ");
    for(i=0; i<m; i++)
        for(j=0; j<n; j++)
            scanf("%d",&a[i][j]);
    printf("\nThe matrix is\n");

    for(i=0; i<m; i++)
    {
        printf("\n");
        for(j=0; j<m; j++)
        {
            printf("%d\t",a[i][j]);
        }
    }
    for(i=0; i<m; i++)
    {
        for(j=0; j<n; j++)
        {
            if(i==j || (i+j==n-1))
                sum=sum+a[i][j];
        }
    }
    printf("\n\nSum of the diagonal elements of a matrix is: %d\n",sum);

    return 0;
}
