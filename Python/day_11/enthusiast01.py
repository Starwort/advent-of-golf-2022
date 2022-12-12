# 338
# fmt: off
T=open(0).read().split("\n\n");P=lambda:[[[],[*eval((c:=m.split('\n'))[1][18:]+",")],c[2][19:],*map(int,(c[3][21:],c[4][-1],c[5][-1]))]for m in T]
for c in(20,10000):D=P();exec("for C,I,o,d,*t in D:\n for old in I:n=eval(o);n=(n%9699690,n//3)[c<21];D[t[n%d>0]][1]+=n,\n C+=I;I[:]=()\n"*c);print((s:=sorted(len(i[0])for i in D))[-1]*s[-2])