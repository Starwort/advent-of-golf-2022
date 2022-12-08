# 306
# fmt: off
p=[];s={};d={}
for r in open(0):
 if'..'in r:p.pop()
 elif'd 'in r:p+=[r.split()[-1]]
 if 1-('$'in r or'r 'in r):s[(*p,r.split()[1])]=int(r.split()[0])
for _ in s:
 x=0
 while x<len(_):d[(*_[:x],)]=d.get((*_[:x],),0)+s[_];x+=1    
print(sum(d[_]*(1e5>d[_])for _ in d),min(d[_]for _ in d if d[_]>d[()]-4e7))