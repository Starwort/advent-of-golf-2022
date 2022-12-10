# 136
# fmt: off
R=c=X=0
S="\n"
T='c+=1;W=c%40;R-=~X*c*(W==20);S+=S[0][W:]or".#"[X<W<X+4];'
for L in open(0):exec(T+(T>L)*f"{T}X+=int(L[4:])")
print(R,S)
