# 211
# fmt: off
r=c=x=0;s=[0]*8;t="c+=1;w=c%40;r-=~x*c*(w==20);s[w//5]+=(0<w>x<w<x+4)<<~-w%5*2;"
for l in open(0):exec(t+(t>l)*(t+"x+=int(l[5:])"))
print(r,''.join("X L  J  G K IAHS  E   F       Y   RZOUB C P"[l%44]for l in s))
