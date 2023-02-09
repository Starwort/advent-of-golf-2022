changequote([[,]])ifelse([[
dnl score (241) - depends on trailing newline in input
divert(1)define(d,defn(define))d(x,`n()n()d(`a',a+$1)')translit(include(i),p
 ado,`()('d(c,1)d(a,1)d(b,0)d(n,`d(`b',b+c*(a)*(c%40==20))ifelse(eval(c%40),1,`
')ifelse(eval(translit(eval(a-(c-1)%40),-)<2),1,@,.)d(`c',incr(c))'))divert`'eval(b)

dnl score 219 - using # instead of @ would require 6 more bytes
define(_,`ifelse($3,,,`+$1*$2*!($1%40-20)_(($1+1),($2+$3),shift(shift(shift($@))))m4wrap(ifelse(eval($1%40),1,`
')ifelse(eval(translit(eval($2-($1-1)%40),-)<2),1,@,.))')')eval(_(1,1,translit(include(i),px
 a-o,`00,,')))

dnl score 207
eval(define(_,`ifelse($4,,`)translit($1,@/,#
',`+$2*($3)*!($2%40-20)_($1substr(@./,eval(($3-~- $2%40)**2>1),eval(1+!($2%40))),-~$2,$3+shift(shift(shift($@))))')')_(/,1,1,translit(include(i),px
 a-o,`00,,')))

]]changequote)dnl
dnl score 184 - using # in output is not practical, script needs last newline
eval(define(_,`ifelse($3,,,`+$1*($2)*!($1%40-20)_(-~$1,$2+shift(shift($@)))m4wrap(substr(@.
,eval(($2-~- $1%40)**2>1),eval(1+!($1%40))))')')_(1,1,translit(include(i),px
 a-o,`00,,')))
