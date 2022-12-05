# 263
# fmt: off
g=str.split
x,y=g(open(0).read(),'\n\n')
p=[''.join(m).strip()[-2::-1]for m in zip(*g(x,'\n'))][1::4]
q=p[:]
def f(d,o):
 for l in y.splitlines():a,b,c=map(int,g(l)[1::2]);d[c-1]+=d[b-1][-a:][::o];d[b-1]=d[b-1][:-a]
 print(''.join(s[-1]for s in d))
f(p,-1)
f(q,1)
