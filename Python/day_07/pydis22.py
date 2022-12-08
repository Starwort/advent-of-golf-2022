# 225
# fmt: off
p=();d={}
for r in open(0):
 a,*_,b=r.split();q=()
 if'd 'in r:p+=b,
 if'..'==b:p=p[:-2]
 if'/'<a<':':
  for x in p+(a,):d[q]=d.get(q,0)+int(a);q+=x,
print(sum(d[_]*(1e5>d[_])for _ in d),min(d[_]for _ in d if d[_]>d[()]-4e7))