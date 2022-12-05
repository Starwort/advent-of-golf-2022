# 375
# fmt: off
s={}
r=range
import re
n=[[*map(int,re.findall("\d+",m))]for m in open(0)if([s.setdefault(i//4+1,[]).insert(0,c)for i in r(1,len(m),4)if(c:=m[i])!=" "]and 0if re.match(" *\[",m)else m[0]=="m")]
def t(u):print("".join(u[i][-1]for i in r(1,len(u)+1)))
v={k:[*s[k]]for k in s}
for o,f,d in n:
 s[d].extend(s[f][-o:])
 for _ in[0]*o:v[d].append(v[f].pop())or s[f].pop()
t(v)
t(s)
