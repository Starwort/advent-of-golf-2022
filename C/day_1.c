#if 0
/* score 320 */
#include<stdio.h>
#define r(s,t,u) t=t*!(s)+(u)*(s);
#define w(x,y,z) h=0;r(x,h,z>y)z^=y*h;y^=z*h;z^=y*h;
int a,b,c,d,e,f,g,h;int main(void){while(!g+(d=getchar())){r(g==d,d,g-1)
r(d>=48,e,e*10+d-48)r(d==10,f,f+e)r(d==10,e,0)r(d==10,g,d)w(d<10,a,f)
w(d<10,b,f)w(d<10,c,f)r(d<10,f,0)r(d!=10,g,0)}printf("%d %d\n",a,a+b+c);}

/* score 225 */
#include<stdio.h>
#define w(y)g=(d<9)*(f>y),f^=y*g,y^=f*g,f^=y*g,
int a,b,c,d,e,f,g;int main(void){for(;!g+(d=getchar());w(a)w(b)w(c)
f*=d>8,g=d==9)d-=1+g,e+=(e*9+d-47+g)*(d>9),f+=e*(d==9),e*=(d!=9);
printf("%d %d\n",a,a+b+c);}

#endif
/* score 223 */
#include<stdio.h>
#define w(y)g=(d<9)*(f>y),f^=y*g,y^=f*g,f^=y*g,
int a,b,c,d,e,f,g;int main(void){for(;!g+(d=getchar());w(a)w(b)w(c)
f*=d>8,g=d==9)d-=1+g,e+=(e*9+d-47+g)*(d>9),f+=e*(d==9),e*=(d!=9);
printf("%d %d",a,a+b+c);}
