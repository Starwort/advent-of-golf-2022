# 232
# fmt: off
p=();d={}
for r in open(0):
 a,*_,b=r.split()
 try:
  for x in range(-~len(p)):d[i]=d.get(i:=p[:x],0)+int(a)
 except:p+=(b,)*('d 'in r)
 if'..'in r:p=p[:-2]
print(sum(d[_]*(1e5>d[_])for _ in d),min(d[_]for _ in d if d[_]>d[()]-4e7))