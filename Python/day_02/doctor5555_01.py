# 254
# fmt: off
i=open(0).read();print(sum([" XYZ".index(r)+3*("ABC"["XYZ".index(r)]==o)+6*("CAB"["XYZ".index(r)]==o)for o,r in [j.split()for j in i.split('\n')]]),sum([3*"XYZ".index(r)+(("ABC".index(o)+"YZX".index(r))%3)+1 for o,r in[j.split()for j in i.split('\n')]]))
