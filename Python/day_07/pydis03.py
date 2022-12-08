# 400
# fmt: off
g={}
c=[]
l=[*open(0)]
while l:
 m=l.pop(0)
 if m=="$ cd ..\n":c.pop()
 elif m=="$ ls\n":
  while l and l[0][0]!="$":
   m=l.pop(0);f=g.setdefault("/".join(c),[0,[]])
   if m[:3]=="dir":f[1].append("/".join([*c,m[4:]]))
   else:f[0]+=int(m.split()[0])
 else:c.append(m[5:])
s=lambda h,d:sum(s(*g[e])for e in d)+h
a=0
p=b=s(*g["/\n"])
for f in g:
 u=s(*g[f])
 if u<=1e5:a+=u
 if b>u>=p-4e7:b=u
print(a,b)