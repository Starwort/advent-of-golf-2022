# 91
# fmt: off
print((v:=sorted(eval(open(0).read().replace('\n','+').replace('++',",")))[-3:])[2],sum(v))
