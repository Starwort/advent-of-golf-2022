# 164
# fmt:off
k=[j.split()for j in open(0).read().split('\n')];print(sum([ord(r)%4+1+3*((ord(r)-ord(o)+2)%3)for o,r in k]),sum([3*(ord(r)%4)+(ord(o)+ord(r)+2)%3+1 for o,r in k]))
