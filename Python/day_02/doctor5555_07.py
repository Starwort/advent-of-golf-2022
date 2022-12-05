# 142
# fmt: off
q=ord;k=open(0).read().split('\n');print(sum([q(r)%4+1+3*((q(r)-q(o)+2)%3)for o,_,r in k]),sum([3*(q(r)%4)+(q(o)+q(r)+2)%3+1 for o,_,r in k]))
