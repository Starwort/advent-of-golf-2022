# 138
# We decided that it's nicer to have a blank line between p1
# and p2, even though the runner would accept both. Technically,
# 2c can be saved from each following golf by backporting it to
# the previous solution
# fmt: off
R=C=X=0
S="\n"
T='C+=1;W=C%40;R-=~X*C*(W==20);S+=S[0][W:]or".#"[X<W<X+4];'
for L in open(0):exec(T+('b'>L)*f"{T}X+=int(L[4:])")
print(R,S)
