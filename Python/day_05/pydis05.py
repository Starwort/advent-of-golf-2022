# 252
# fmt: off
g=str.split
I='\n'
x,y=g(open(0).read(),2*I)
p=[''.join(m).strip()[-2::-1]for m in zip(*g(x,I))][1::4]
def f(d,o):
 for l in g(y,I):a,b,c=map(int,g(l)[1::2]);d[c-1]+=d[b-1][-a:][::o];d[b-1]=d[b-1][:-a]
 print(''.join(s[-1]for s in d))
f(p[:],-1)
f(p,1)
