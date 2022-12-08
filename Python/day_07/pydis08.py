# 299
# fmt: off
p=[];s={};d={};t=str.split
for r in open(0):
 if'..'in r:p.pop()
 elif'd 'in r:p+=[t(r)[-1]]
 if 1-('$'in r or'r 'in r):s[(*p,t(r)[1])]=int(t(r)[0])
for _ in s:
 x=0
 while x<len(_):n=(*_[:x],);d[n]=d.get(n,0)+s[_];x+=1    
print(sum(d[_]*(1e5>d[_])for _ in d),min(d[_]for _ in d if d[_]>d[()]-4e7))