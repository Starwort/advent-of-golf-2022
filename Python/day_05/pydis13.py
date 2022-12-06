# 196
# fmt: off
g,j,*f=str.split,''.join,*open(0)
for o in-1,1:
 d=['']+[j(g(j(m)))for m in zip(*f[:8])][1::4]
 for l in f[10:]:a,b,c=map(int,g(l)[1::2]);d[c]=d[b][:a][::o]+d[c];d[b]=d[b][a:]
 print(j(*zip(*d)))