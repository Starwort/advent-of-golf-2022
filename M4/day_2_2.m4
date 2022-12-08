changequote([[,]])ifelse([[
dnl score 118
define(d,`define($1,+$2)')d(AX,3)d(AY,4)d(AZ,8)d(BX,1)d(BY,5)d(BZ,9)d(CX,2)d(CY,6)d(CZ,7)eval(translit(include(i),- ))

dnl score (98) - prior to tighter I/O rules, requires trailing newline
eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+$`1'*3-($2-$`1')%3)')d(A,4)d(B,3)d(C,5)))

]]changequote)dnl
dnl score 99
eval(translit(include(i),X Y
Z,1(2)3define(d,`define($1,+$`1'*3-($2-$`1')%3)')d(A,4)d(B,3)d(C,5))))
