changequote([[,]])ifelse([[
dnl score (163) - prior to tighter I/O rules, requires trailing newline
define(a)eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+($2+`$'1)%3*3+$`1pushdef(`a',`popdef(`a')a'+$'`1*3-($2-$'`1+1)%3)')')d(A,3)d(B,2)d(C,4))) eval(a)

]]changequote)dnl
dnl score 164
define(a)eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+($2+`$'1)%3*3+$`1pushdef(`a',`popdef(`a')a'+$'`1*3-($2-$'`1+1)%3)')')d(A,3)d(B,2)d(C,4)))) eval(a)
