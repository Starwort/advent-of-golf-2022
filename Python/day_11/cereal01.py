# 291
# fmt: off
_=*open(0),0
for N in 20,10000:C=[0]*8;D=[[*map(int,(e[-2],f[30],a[7],d[21:])),[*eval(b[18:-1]+",")],c[19:]]for a,b,c,d,e,f,g in zip(*[iter(_)]*7)];exec("for*c,i,p,I,f in D:\n for old in I:n=eval(f);n%=9699690;n//=N>20or 3;D[c[n%p>0]][4]+=n,;C[i]+=1\n I[:]=()\n"*N);C.sort();print(C[6]*C[7])