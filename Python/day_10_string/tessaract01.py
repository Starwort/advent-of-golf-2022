# 296
# fmt: off
L=[1];e=enumerate;A=[0]*8
for l in open(0):
 L+=L[-1],
 if l<"b":L+=L[-1]+int(l[5:]),
for i,v in e(sum(p-2<j<p+2 for p in L[j:-1:40])for j in range(40)):A[i//5]+=v<<2*(i%5)
print(sum(v*(20+i*40)for i,v in e(L[19::40])),''.join(map(lambda x:"X L  J  G K IAHS  E   F       Y   RZOUB C P"[x%44],A)))
