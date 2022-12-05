# 102
# fmt: off
print(*(sum(v:=sorted(sum(map(int,y.split()))for y in open(0).read().split('\n\n'))[-3:]),v[2])[::-1])
