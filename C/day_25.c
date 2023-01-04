#if 0
/* score 269 */
#include<stdio.h>
char*q,a[75],*p=a,d;int main(void){for(q=p+50;q-p;)*p++=*q--=5;for(*q=0;p=a+25,
~scanf("%s",q=a+50);){for(;*q;q++)*q=*q>50?3:*q<48?4:*q-43;for(d=0;q--,p---a;
d=d/5-1)d+=*p+*q-3,*p=d%5+3;}for(p=a;*++p==5;);for(q=p;*q;q++)*q="=-012"[*q-3];
printf("%s",p);}

/* score 253 */
#include<stdio.h>
char*q,a[75],*p=a,d;int main(void){for(q=p+50;q-p;*p++=5)*q--=2;for(*q=0;p=a+25
,~scanf("%s",q=a+50);){for(;d=*q;*q++=d>4?0:d<0?1:d)d-=46;for(d=0;q--,p---a;d=
d/5-1)d+=*p+*q,*p=d%5+3;}for(p=a;*++p==5;);for(;*p;)putchar("=-012"[*p++-3]);}

/* score 249 */
#include<stdio.h>
char*q,a[75],*p=a,d;int main(void){for(q=p+50;q-p;*p++=5)*q--=1;for(*q=0;p=a+
25,~scanf("%s",q=a+50);){for(;d=*q;*q++=d>2?d-2:-d)d=d%9%6;for(d=1;q--,p---a;
d/=5)d+=*p+*q,*p=d%5+3;}for(p=a;*++p==5;);for(;*p;)putchar("=-012"[*p++-3]);}

#endif
/* score 236 */
#include<stdio.h>
char*q,a[75],*p=a,d;int main(void){for(q=p+50;q-p;*p++=5)++*q--;for(;~scanf(
"%s",q=a+50);){for(p=a+25;d=*q;*q++=d>2?d-2:-d)d=d%9%6;for(++d;q--,p---a;
d/=5)d+=*p+*q,*p=d%5+3;}for(;*++p;d||putchar("=-012"[*p-3]))d&=*p<6;}
