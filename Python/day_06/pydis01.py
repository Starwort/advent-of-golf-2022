# 69
# fmt: off
s=input();i=0
for j in 4,14:
 while len({*s[i-j:i]})<j:i+=1
 print(i)