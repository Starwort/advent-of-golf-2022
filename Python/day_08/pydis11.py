# 282
# fmt: off
l=*open(0),;r=*zip(*l),;s=c=0
for _ in range(9801):t=l[i:=_//99];s+=t[j:=_%99]>min(eval("max(%ror'/'),"*4%(u:=(t[j+1:-1],t[:j][::-1],r[j][i+1:],r[j][:i][::-1]))));v,w,x,y=(a+(a<b)for a,b in zip(eval("(z:=1)*sum(z:=z*t[j]>x for x in%r),"*4%u),map(len,u)));c=max(c,v*w*x*y)
print(s,c)
