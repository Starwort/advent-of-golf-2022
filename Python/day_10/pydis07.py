# 136
# fmt: off
R=C=X=0
S=""
T='C+=1;W=C%40;R-=~X*C*(W==20);S+=".#"[X<W<X+4]+"\\n"[W:];'
for L in open(0):exec(T+('b'>L)*f"{T}X+=int(L[4:])")
print(R,S)
