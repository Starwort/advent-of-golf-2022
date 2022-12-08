# 272
# fmt: off
p=();s={};d={}
for r in open(0):
 t=r.split()
 try:s[p+(t[1],)]=int(t[0])
 except:p+=(t[-1],)*('d 'in r)
 if'..'in r:p=p[:-2]
for _ in s:
 x=0
 while x<len(_):d[_[:x]]=d.get(_[:x],0)+s[_];x+=1    
print(sum(d[_]*(1e5>d[_])for _ in d),min(d[_]for _ in d if d[_]>d[()]-4e7))