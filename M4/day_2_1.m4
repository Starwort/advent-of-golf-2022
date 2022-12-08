changequote([[,]])ifelse([[
dnl score 118
define(d,`define($1,+$2)')d(AX,4)d(AY,8)d(AZ,3)d(BX,1)d(BY,5)d(BZ,9)d(CX,7)d(CY,2)d(CZ,6)eval(translit(include(i),- ))

dnl score (98) - prior to tighter I/O rules, requires trailing newline
eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+($2+$`1')%3*3+$`1')')d(A,0)d(B,2)d(C,1)))

]]changequote)dnl
dnl score 99
eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+($2+$`1')%3*3+$`1')')d(A,0)d(B,2)d(C,1))))
