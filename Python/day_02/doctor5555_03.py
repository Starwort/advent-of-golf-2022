# 206
# fmt: off
i=open(0).read();print(sum([" XYZ".index(r)+3*((ord(r)-ord(o)+2)%3)for o,r in [j.split()for j in i.split('\n')]]),sum([3*"XYZ".index(r)+((ord(o)+ord(r)+2)%3)+1 for o,r in[j.split()for j in i.split('\n')]]))
