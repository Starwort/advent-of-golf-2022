# 416
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
def s(h,d):return sum(s(*g[e])for e in d)+h
t=[s(*f)for f in g.values()]
print(sum(u for u in t if u<=1e5),min(u for u in t if u>=max(t)-4e7))