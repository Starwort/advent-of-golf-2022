# 252
# This solution isn't shorter than the previous one, but allowed us to
# shave off more characters soon afterwards
# fmt: off
g=str.split
I='\n'
x,y=g(open(0).read(),2*I)
p=[''.join(m).strip()[:-1]for m in zip(*g(x,I))][1::4]
def f(d,o):
 for l in g(y,I):a,b,c=map(int,g(l)[1::2]);d[c-1]=d[b-1][:a][::o]+d[c-1];d[b-1]=d[b-1][a:]
 print(''.join(s[0]for s in d))
f(p[:],-1)
f(p,1)
