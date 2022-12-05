# 177
# fmt: off
k=[j.split()for j in open(0).read().split('\n')];print(sum([" XYZ".index(r)+3*((ord(r)-ord(o)+2)%3)for o,r in k]),sum([3*("XYZ".index(r))+((ord(o)+ord(r)+2)%3)+1 for o,r in k]))
