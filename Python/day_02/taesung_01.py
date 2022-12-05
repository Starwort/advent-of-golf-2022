# 130
# fmt: off
print(*[sum(s)for s in zip(*((3*((r-o+2)%3)+r-87,3*r+(r+o+2)%3-263)for l in open(0).read().split('\n')for o,_,r in[map(ord,l)]))])
