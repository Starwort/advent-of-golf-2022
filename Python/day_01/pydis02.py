# 96
# fmt: off
print((v:=sorted(sum(map(int,y.split()))for y in open(0).read().split("\n\n")))[-1],sum(v[-3:]))
