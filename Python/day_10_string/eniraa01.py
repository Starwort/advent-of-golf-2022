# 211
# fmt: off
F=*open(0),0
for N in 17,9997:C=[0]*8;D=[eval(f"[{e[-2]},{f[30]},{a[7]},{d[21:]},[{b[18:]}],c[19:]]")for a,b,c,d,e,f,_ in zip(*[iter(F)]*7)];exec("for*c,i,p,I,f in D:\n for old in I:n=eval(f)//(N%7);D[c[n%p>0]][4]+=n,;C[i]+=1\n I[:]=()\n"*(N+3));C.sort();print(C[6]*C[7])
