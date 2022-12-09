# 233
# fmt: off
*f,=map(str.split,open(0))
for n in 2,10:t=[0];k=t*n;[exec("k[0]+=1j**'RDL'.find(m);x=1\nwhile x<n:d=k[x-1]-k[x];a,b=d.real,d.imag;k[x]+=abs(d)>=2and(a>0)-(a<0)+1j*((b>0)-(b<0));x+=1\nt+=k[-1],;"*int(v))for m,v in f];print(len({*t}))
