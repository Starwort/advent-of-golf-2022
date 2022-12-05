# 158
# this solution would benefit from the change of rules as it could read bytes
# instead of str and not need ord() calls
# fmt: off
q=ord;k=[j.split()for j in open(0).read().split('\n')];print(sum([q(r)%4+1+3*((q(r)-q(o)+2)%3)for o,r in k]),sum([3*(q(r)%4)+(q(o)+q(r)+2)%3+1 for o,r in k]))
