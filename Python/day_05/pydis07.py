# 250
# This doesn't use the previous transformation as it was found at close
# to the same time.
# fmt: off
g=str.split
I='\n'
x,y=g(open(0).read(),2*I)
p=[''.join(m).strip()[::-1]for m in zip(*g(x,I))][1::4]
def f(d,o):
 for l in g(y,I):a,b,c=map(int,g(l)[1::2]);d[c-1]+=d[b-1][-a:][::o];d[b-1]=d[b-1][:-a]
 print(''.join(s[-1]for s in d))
f(p[:],-1)
f(p,1)
