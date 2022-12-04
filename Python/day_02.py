# fmt: off
solution = lambda i: (sum([" XYZ".index(r)+3*("ABC"["XYZ".index(r)]==o)+6*("CAB"["XYZ".index(r)]==o)for o,r in [j.split()for j in i.split('\n')]]),sum([3*"XYZ".index(r)+(("ABC".index(o)+"YZX".index(r))%3)+1 for o,r in[j.split()for j in i.split('\n')]]))
solution = lambda i: (sum([" XYZ".index(r)+3*(("XYZ".index(r)-"ABC".index(o)+1)%3)for o,r in [j.split()for j in i.split('\n')]]),sum([3*"XYZ".index(r)+(("ABC".index(o)+"YZX".index(r))%3)+1 for o,r in[j.split()for j in i.split('\n')]]))
solution = lambda i: (sum([" XYZ".index(r)+3*((ord(r)-ord(o)+2)%3)for o,r in [j.split()for j in i.split('\n')]]),sum([3*"XYZ".index(r)+((ord(o)+ord(r)+2)%3)+1 for o,r in[j.split()for j in i.split('\n')]]))
solution = lambda i: ((k:=[j.split()for j in i.split('\n')],sum([" XYZ".index(r)+3*((ord(r)-ord(o)+2)%3)for o,r in k]))[1],sum([3*("XYZ".index(r))+((ord(o)+ord(r)+2)%3)+1 for o,r in k]))
solution = lambda i: ((k:=[j.split()for j in i.split('\n')],sum([ord(r)%4+1+3*((ord(r)-ord(o)+2)%3)for o,r in k]))[1],sum([3*(ord(r)%4)+(ord(o)+ord(r)+2)%3+1 for o,r in k]))
# score:         147 vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
solution = lambda i: ((q:=ord,k:=[j.split()for j in i.split('\n')],sum([q(r)%4+1+3*((q(r)-q(o)+2)%3)for o,r in k]))[2],sum([3*(q(r)%4)+(q(o)+q(r)+2)%3+1 for o,r in k]))
# fmt: on
