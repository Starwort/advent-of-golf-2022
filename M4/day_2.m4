changequote([[,]])ifelse([[
dnl score (163) - prior to tighter I/O rules, requires trailing newline
define(a)eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+($2+`$'1)%3*3+$`1pushdef(`a',`popdef(`a')a'+$'`1*3-($2-$'`1+1)%3)')')d(A,3)d(B,2)d(C,4))) eval(a)

dnl score 164
define(a)eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+($2+`$'1)%3*3+$`1pushdef(`a',`popdef(`a')a'+$'`1*3-($2-$'`1+1)%3)')')d(A,3)d(B,2)d(C,4)))) eval(a)

]]changequote)dnl
dnl score 150
eval(translit(_(include(i)),define(_,`ifelse($1,,`) eval(',`+index(..BXCYAZAXBYCZCXAYBZ,$1)/2_(shift($@))+index(..BXCXAXAYBYCYCZAZBZ,$1)/2')')
 ,`,'))
