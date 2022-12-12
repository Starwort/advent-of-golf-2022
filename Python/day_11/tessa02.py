# 316
# fmt: off
T=open(0).read()
for c in 20,10000:C=[0]*8;D=[[*map(int,((q:=m.split('\n'))[4][29],q[5][30],q[0][-2],q[3][21:])),[*eval(q[1][18:]+",")],q[2][19:]]for m in T.split("\n\n")];exec("for*y,i,x,I,t in D:\n for old in I:n=eval(t);n=(n%9699690,n//3)[c<21];D[y[n%x>0]][4]+=n,;C[i]+=1\n I[:]=()\n"*c);C.sort();print(C[6]*C[7])