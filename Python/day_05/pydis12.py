# 234
# fmt: off
g=str.split
I='\n'
x,y=g(open(0).read(),2*I)
def f(o):
 d=[' ']+[''.join(m).strip()for m in zip(*g(x,I))][1::4]
 for l in g(y,I):a,b,c=map(int,g(l)[1::2]);d[c]=d[b][:a][::o]+d[c];d[b]=d[b][a:]
 print(''.join([*zip(*d)][0]))
f(-1)
f(1)
