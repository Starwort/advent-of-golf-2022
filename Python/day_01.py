# fmt: off
solution = lambda i: (v:=sorted(sum(map(int,y.split('\n')))for y in i.split("\n\n")),v[-1],sum(v[-3:]))[-2:]
solution = lambda i: ((v:=sorted(sum(map(int,y.split()))for y in i.split("\n\n")))[-1],sum(v[-3:]))
# the following solution was created before solutions were requred to return an in-order tuple
solution = lambda i: (sum(v:=sorted(sum(map(int,y.split()))for y in i.split('\n\n'))[-3:]),v[2])[::-1]
solution = lambda i: (sum(v:=sorted(eval(i.replace('\n','+').replace('++',",")))[-3:]),v[2])[::-1]
# fmt: on
