changequote([[,]])ifelse([[
dnl score (133) - depends on trailing newline in input
eval(define(d,defn(define))d(x,`n()n()d(`a',a+$1)')translit(include(i),p
 ado,`()('d(c,1)d(a,1)d(n,`+c*(a)*(c%40==20)d(`c',(c+1))')))

dnl score 134
define(_,`ifelse($3,,,`+$1*$2*!($1%40-20)_(($1+1),($2+$3),shift(shift(shift($@))))')')eval(_(1,1,translit(include(i),px
 a-o,`00,,')))

]]changequote)dnl
dnl score 132 - depends on no trailing newline in input
eval(define(d,defn(define))d(x,`n n d(`a',a+$1)')translit(include(i),p
 ado,`()('d(c,1)d(a,1)d(n,`+c*(a)*(c%40==20)d(`c',(c+1))'))))
