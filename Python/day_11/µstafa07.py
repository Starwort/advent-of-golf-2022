# 320
# fmt: off
T=open(0).read()
for c in 20,10000:D=[[*map(int,((q:=m.split('\n'))[4][-1],q[5][-1],q[3][21:])),[],[*eval(q[1][18:]+",")],q[2][19:]]for m in T.split("\n\n")];exec("for*t,d,C,I,o in D:\n for old in I:n=eval(o);n=(n%9699690,n//3)[c<21];D[t[n%d>0]][4]+=n,\n C+=I;I[:]=()\n"*c);s=sorted(len(i[3])for i in D);print(s[6]*s[7])