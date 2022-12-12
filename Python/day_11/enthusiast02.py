# 337
# fmt: off
T=open(0).read().split("\n\n");P=lambda:[[*map(int,((c:=m.split('\n'))[4][-1],c[5][-1],c[3][21:])),[],[*eval(c[1][18:]+",")],c[2][19:]]for m in T]
for c in(20,10000):D=P();exec("for*t,d,C,I,o in D:\n for old in I:n=eval(o);n=(n%9699690,n//3)[c<21];D[t[n%d>0]][4]+=n,\n C+=I;I[:]=()\n"*c);print((s:=sorted(len(i[3])for i in D))[-1]*s[-2])