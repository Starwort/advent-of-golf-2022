changequote([[,]])ifelse([[
dnl score (241) - depends on trailing newline in input
divert(1)define(d,defn(define))d(x,`n()n()d(`a',a+$1)')translit(include(i),p
 ado,`()('d(c,1)d(a,1)d(b,0)d(n,`d(`b',b+c*(a)*(c%40==20))ifelse(eval(c%40),1,`
')ifelse(eval(translit(eval(a-(c-1)%40),-)<2),1,@,.)d(`c',incr(c))'))divert`'eval(b)

]]changequote)dnl
dnl score (219) - output does not match grid format of Python,
dnl but using # instead of @ requires 6 more bytes
define(_,`ifelse($3,,,`+$1*$2*!($1%40-20)_(($1+1),($2+$3),shift(shift(shift($@))))m4wrap(ifelse(eval($1%40),1,`
')ifelse(eval(translit(eval($2-($1-1)%40),-)<2),1,@,.))')')eval(_(1,1,translit(include(i),px
 a-o,`00,,')))
