# 441
# fmt: off
import re
from math import*
T=open(0).read().split("\n\n")
P=lambda:[[(m:=p.split('\n'))[2].split("=")[1],*map(lambda t:[*map(int,re.findall(r'\d+',t))],m)]for p in T]
D=P()
L=1
for m in D:L=L*(t:=m[4][0])//gcd(L,t)
def S(c,D):
 C=[0]*len(D)
 for _ in"."*c:
  for i,(T,_,I,_,x,*y)in enumerate(D):
   for old in I:n=(eval(T)//[1,3][c<21])%L;C[i]+=1;D[y[n%x[0]>0][0]][2]+=[n]
   I[:]=[]
 return prod(sorted(C)[-2:])
print(S(20,D),S(10000,P()))