# 382
# fmt: off
T=open(0).read().split("\n\n")
P=lambda:[[[*eval((c:=m.split('\n'))[1][18:]+",")],c[2][19:],*map(int,(c[0][-2],c[3][21:],c[4][-1],c[5][-1]))]for m in T]
def S(c):
 C=[0]*len(D:=P());L=1
 for m in D:L*=m[3]
 for _ in"."*c:
  for I,T,i,x,*y in D:
   for old in I:n=eval(T)//[1,3][c<21];n=[n%L,n][c<21];C[i]+=1;D[y[n%x>0]][0]+=[n]
   I[:]=[]
 C.sort();print(C[-1]*C[-2])
S(20)
S(10000)