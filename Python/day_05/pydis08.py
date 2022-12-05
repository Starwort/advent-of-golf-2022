# 247
# This combines the save from 7 with the transformation from 6 to save
# 3 more characters.
# fmt: off
g=str.split
I='\n'
x,y=g(open(0).read(),2*I)
p=[''.join(m).strip()for m in zip(*g(x,I))][1::4]
def f(d,o):
 for l in g(y,I):a,b,c=map(int,g(l)[1::2]);d[c-1]=d[b-1][:a][::o]+d[c-1];d[b-1]=d[b-1][a:]
 print(''.join(s[0]for s in d))
f(p[:],-1)
f(p,1)
