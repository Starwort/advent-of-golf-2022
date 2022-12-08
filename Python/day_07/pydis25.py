# 192
# fmt: off
s=[];d=[]
for r in open(0):
 a,*_,b=r.split()
 if'/'>b:d+=s.pop(),
 elif'$ d'>r:s+=0,
 if'/'<a<':':s=[i+int(a)for i in s]
d+=s;print(sum(_*(1e5>_)for _ in d),min(_ for _ in d if _>max(d)-4e7))