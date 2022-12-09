# 257
# fmt: off
f=[*map(str.split,open(0))]
for n in 2,10:
 t={0};k=[0]*n
 for m,s in f:exec('k[0]+={"U":1,"D":-1,"L":-1j,"R":1j}[m]\nfor x in range(1,n):d=k[x-1]-k[x];a,b=d.real,d.imag;k[x]+=((a>0)-(a<0)+1j*((b>0)-(b<0)))*(abs(d)>=2)\nt.add(k[-1]);'*int(s))
 print(len(t))
