# 404
# fmt: off
T=open(0).read().split("\n\n")
P=lambda:[[[*eval((c:=m.split('\n'))[1][18:]+",")],c[2][19:],*map(int,(c[3][21:],c[4][-1],c[5][-1]))]for m in T]
A=P()
L=1
for m in A:L*=m[2]
def S(c,D):
 C=[0]*len(D)
 for _ in"."*c:
  for i,(I,T,x,*y)in enumerate(D):
   for old in I:n=eval(T)//[1,3][c<21];n=[n%L,n][c<21];C[i]+=1;D[y[n%x>0]][0]+=[n]
   I[:]=[]
 return (s:=sorted(C))[-1]*s[-2]
print(S(20,A),S(10000,P()))