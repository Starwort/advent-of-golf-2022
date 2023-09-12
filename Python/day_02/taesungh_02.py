# 114
# fmt: off
print(*[sum(s)for s in zip(*((3*((r-o+2)%3)+r-87,3*r+(r+o+2)%3-263)for l in open(0)for o,_,r,*_ in[map(ord,l)]))])
