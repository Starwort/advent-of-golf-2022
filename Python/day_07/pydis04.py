# 397
# fmt: off
g={}
c=[]
l=[*open(0)]
while l:
 m=l.pop(0)
 if"$ cd ..\n"==m:c.pop()
 elif"$ ls\n"==m:
  while l and"$"!=l[0][0]:
   f,m=g.setdefault("/".join(c),[0,[]]),l.pop(0)
   if"dir"==m[:3]:f[1].append("/".join([*c,m[4:]]))
   else:f[0]+=int(m.split()[0])
 else:c.append(m[5:])
s=lambda h:sum(s(e)for e in g[h][1])+g[h][0]
a=0
p=b=s("/\n")
for f in g:
 u=s(f)
 if u<=1e5:a+=u
 if b>u>=p-4e7:b=u
print(a,b)