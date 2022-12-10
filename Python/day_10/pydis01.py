# 160
# fmt: off
R=C=0
S=""
X=1
def T():
 global R,C,S;C+=1;R+=X*C*(C%40==20);S+=".#"[X<=C%40<X+3]+"\n"*(C%40<1)
for L in open(0):
 T()
 if L[0]<'b':T();X+=int(L[4:])
print(R,S)
