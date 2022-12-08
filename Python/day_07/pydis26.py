# 183
# fmt: off
s=[];d=[]
for r in open(e:=0):
 a,*_,b=r.split()
 if'/'>b:*s,v=s;d+=v,;e+=v*(1e5>v)
 elif'$ d'>r:s+=0,
 if'/'<a<':':s=[i+int(a)for i in s]
print(e,min(_ for _ in d+s if _>max(s)-4e7))