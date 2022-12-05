# 98
# fmt: off
print(*(sum(v:=sorted(eval(open(0).read().replace('\n','+').replace('++',",")))[-3:]),v[2])[::-1])
