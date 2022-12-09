# 201
# fmt: off
*I,=open(0);print(sum(ord((c:=({*s[:(l:=len(s)//2)]}&{*s[l:]}).pop()).lower())-96+26*(c<'a')for s in I),sum(ord((d:=({*a}&{*b}&{*c}-{'\n'}).pop()).lower())-96+26*(d<'a')for a,b,c in zip(*[iter(I)]*3)))
