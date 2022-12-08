# 305
# fmt: off
l=*open(s:=0),;r=*zip(*l),;c=[]
for _ in range(9801):
 t=l[i:=_//99];s+=t[j:=_%99]>min(eval("max(%ror'/'),"*4%(u:=(t[j+1:-1],t[:j][::-1],r[j][i+1:],r[j][:i][::-1]))));v,w,x,y=eval("(z:=1)and sum(z and(z:=x<t[j])for x in%r),"*4%u);m,n,o,p=map(len,u);v+=v<m;w+=w<n;x+=x<o;y+=y<p;c+=[v*w*x*y]
print(s,max(c))
