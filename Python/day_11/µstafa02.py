# 410
# fmt: off
from math import*
T=open(0).read().split("\n\n")
P=lambda:[[[*eval((c:=m.split('\n'))[1][18:]+",")],c[2][19:],*map(int,(c[3][21:],c[4][-1],c[5][-1]))]for m in T]
def S(c,D):
 C=[0]*len(D)
 for _ in"."*c:
  for i,(I,T,x,*y)in enumerate(D):
   for old in I:n=eval(T)//[1,3][c<21];n=[n%prod(m[2]for m in D),n][c<21];C[i]+=1;D[y[n%x>0]][0]+=[n]
   I[:]=[]
 return prod(sorted(C)[-2:])
print(S(20,P()),S(10000,P()))