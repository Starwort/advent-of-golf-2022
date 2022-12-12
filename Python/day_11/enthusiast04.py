# 296
# fmt: off
T=*open(0),0
for c in 20,10000:C=[0]*8;D=[[*map(int,(J[-2],K[30],E[7],H[21:-1])),[*eval(F[18:-1]+",")],G[19:-1]]for E,F,G,H,J,K,_ in zip(*[iter(T)]*7)];exec("for*y,i,x,I,t in D:\n for old in I:n=eval(t);n=(n%9699690,n//3)[c<21];D[y[n%x>0]][4]+=n,;C[i]+=1\n I[:]=()\n"*c);C.sort();print(C[6]*C[7])