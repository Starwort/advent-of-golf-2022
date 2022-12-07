# 106
# fmt: off
print(sum(1-(a>c<=d<b or d>b>=a<c)+1j*(a<=d>=c<=b)for a,b,c,d in[eval(l.replace(*'-,'))for l in open(0)]))