changequote([[,]])ifelse([[
dnl score 257
define(d,defn(pushdef))translit(_(include(i)),d(_,`ifelse($1,,,`d(`p',`$1,$2,$3')d($1.$2.$3)_(shift(shift(shift($@))))')')
,`,')eval(d(f,`ifdef(`p',`c(p)popdef(`p')f ')')d(c,`+6s(incr($1),$2,$3)s($1,incr($2),$3)s($1,$2,incr($3))')d(s,`ifdef($1.$2.$3,-2)')f)

]]changequote)dnl
dnl score 204
eval(translit(_(include(i)),define(_,`ifelse($1,,,`define($1.$2.$3)_(shift(shift(shift($@))))c($@)')')
,`,'define(c,`+6s(incr($1),$2,$3)s($1,incr($2),$3)s($1,$2,incr($3))')define(s,`ifdef($1.$2.$3,-2)')))
