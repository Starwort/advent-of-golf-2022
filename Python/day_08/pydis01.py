# 315
# fmt: off
l=*open(s:=0),;r=*zip(*l),;e=s
for _ in range(9801):
 i=_//99;j=_%99;t=l[i];s+=min(eval("max(%ror'/'),"*4%(u:=(t[j+1:-1],t[:j][::-1],r[j][i+1:],r[j][:i][::-1]))))<t[j];v,w,x,y=eval("(z:=1)and sum(z and(x<t[j]or(z:=0))for x in%r),"*4%u);m,n,o,p=map(len,u);v+=v<m;w+=w<n;x+=x<o;y+=y<p;c=v*w*x*y
 if c>e:e=c
print(s,e)
