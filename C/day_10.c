#if 0
/* score 231 */
#include<stdio.h>
int a,c,d,e,f,g,h;char b[247];int main(void){for(e=1;~(c=getchar());g-=2*!c)
f=(c-=45)<0?a+=-~d*e*!(d%40-19),h%41||(b[h++]=10),c=e-d++%40,b[h++]="#."[c*c>1],
e+=f*g,c=g=1,0:f*10+(c-3)*!!c*(c<13);printf("%d%s",a,b);}

/* score 227 */
#include<stdio.h>
#include<stdlib.h>
int a,c,d,e=1;char*p,*q,b[253];int main(void){for(q=6+(p=b);~(*++p=
getchar());*q=10)e+=*p<40?a+=-~d*e*!(d%40-19),q+=!(d%40),c=e-d++%40,
*q++="#."[c*c>1],atoi(1+(p=b)):0;printf("%d%s",a,b+6);}

/* score 219 */
#include<stdio.h>
#include<stdlib.h>
int a,c,d,e=1;char*p,*q,b[253];int main(void){for(q=6+(p=b);~
(*++p=getchar());*b=*q=10)e+=*p<40?q+=!(c=d%40),a+=++d*e*!(c-
19),c-=e,*q++="#."[c*c>1],atoi(p=b):0;printf("%d%s",a,b+6);}

/* score 217 */
#include<stdio.h>
#include<stdlib.h>
int a,c,d,e=1;char*q,b[253],*p=b;int main(void){for(q=6+b;~(
*++p=getchar());*b=*q=10)e+=*p<40?q+=!(c=d%40),a+=++d*e*!(c-
19),c-=e,*q++="#."[c*c>1],atoi(p=b):0;printf("%d%s",a,b+6);}

/* score 286, with its own OCR */
#include<stdio.h>
#include<stdlib.h>
int a,c,d,e=1,x[8];char*p,b[5];int main(void){for(p=b;~(*p=getchar());)
e+=*p<40?c=d%40,a+=-~d*e*!(c-19),x[c/5]+=((c-e)*(c-e)<2)<<(d++%5*2),
atoi(p=b):!p++;for(c=!printf("%d ",a);c<8;)putchar(
"X L  J  G K IAHS  E   F       Y   RZOUB C P"[x[c++]%44]);}

#endif
/* score 284, with its own OCR */
#include<stdio.h>
#include<stdlib.h>
int a,c,d,e=1,x[8];char*p,b[5];int main(void){for(p=b;~(*p=getchar());)
e+=*p<40?c=d%40,a+=-~d*e*!(c-19),x[c/5]+=((c-e)*(c-e)<2)<<d++%5*2,
atoi(p=b):!p++;for(c=!printf("%d ",a);c<8;)putchar(
"X L  J  G K IAHS  E   F       Y   RZOUB C P"[x[c++]%44]);}
