# 229
# fmt: off
p=();d={}
for r in open(0):
 a,*_,b=r.split();q=()
 try:
  for x in p+('',):d[q]=d.get(q,0)+int(a);q+=(x,)
 except:p+=(b,)*('d 'in r)
 if'..'==b:p=p[:-2]
print(sum(d[_]*(1e5>d[_])for _ in d),min(d[_]for _ in d if d[_]>d[()]-4e7))