/* score 294 */
#include<stdio.h>
int a,b,s,t;char c[20000],*m,*n,*p,*q=c;long long d[6];void u(long long e){
for(t=0;e/=2;t++);}int main(void){for(q+=fread(m=n=p=c,1,20000,stdin);q-m;)
*n-10?*p-10?n+=(++p-m)&1:(d[s]|=1ll<<((*m&31)+26*(*m<95)),d[s+1]|=1ll<<
((*n&31)+26*(*n<95)),m++,n++):*p==10?m=n=++p,u(d[s]&d[s+1]),a+=t,
((s+=2)==6?u((d[0]|d[1])&(d[2]|d[3])&(d[4]|d[5])),b+=t,
s=d[0]=d[1]=d[2]=d[3]=d[4]=d[5]=0,p:p):p;printf("%d %d",a,b);}
