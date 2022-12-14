changequote([[,]])ifelse([[
dnl score 338
define(d,defn(define))d(f,$1)d(a,`index($1,`(')')d(s,defn(shift))d(c,`ifelse($1,$2,`c(s(s($@)))',$1,(),1,$2,(),0,a($1)a($2),00,`c(f$1,f$2,(s$1),(s$2),s(s($@)))',a($1)a($2),0-1,`c($1,($2),s(s($@)))',a($1)a($2),-10,`c(($1),s($@))',`($1<$2)')')d(_,`ifelse($2,,,`+($1)*c($2,$3)_($1+1s(s(s($@))))')')eval(_(1,translit((include(i)),[
](),(,))))

dnl score 295
define(d,defn(define))d(f,$1)d(a)d(S,s(s($@)))d(s,defn(shift))d(c,`ifelse($1,$2,`c(S($@))',$1,(),1,$2,(),0,a$1a$2,,`c(f$1,f$2,(s$1),(s$2),S($@))',a$1,,`c($1,($2),S($@))',a$2,,`c(($1),s($@))',($1<$2))')d(_,`ifelse($2,,,`+($1)*c($2,$3)_($1+1s(S($@)))')')eval(_(1,translit((include(i)),[
](),(,))))

]]changequote)dnl
dnl score 291
define(d,defn(define))d(f,$1)d(a)d(S,s(s($@)))d(s,defn(shift))d(c,`ifelse($1,$2,`c(S($@))',$1,(),1,$2,(),0,a$1a$2,,`c(f$1,f$2,(s$1),(s$2),S($@))',a$1,,`c($1,($2),S($@))',a$2,,`c(($1),s($@))',($1<$2))')eval(translit(_(1,include(i)),[
],(,)d(_,`ifelse($2,,,`+($1)*c($2,$3)_($1+1s(S($@)))')')))
