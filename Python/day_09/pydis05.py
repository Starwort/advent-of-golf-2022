# 239
# fmt: off
*f,=map(str.split,open(0))
for n in 2,10:
 t=[0];k=t*n
 for m,v in f:exec("k[0]+=1j**'RDL'.find(m)\nfor x in range(1,n):d=k[x-1]-k[x];a,b=d.real,d.imag;k[x]+=((a>0)-(a<0)+1j*((b>0)-(b<0)))*(abs(d)>=2)\nt+=k[-1],;"*int(v))
 print(len({*t}))
