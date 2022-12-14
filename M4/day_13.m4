changequote([[,]])ifelse([[
dnl score 473
define(d,defn(define))d(I,defn(ifelse))d(s,`shift(shift($@))')d(a)d(S,`I($2,,``,$1'',`I(c($1,$2),1,``,$@'',``,$2'S($1,s($@))')')')d(l,`.I((($1)),$2,,`l($1,s($@))')')d(f,$1)d(c,`I($1,$2,`c(s($@))',$1,(),1,$2,(),0,a$1a$2,,`c(f$1,f$2,(shift$1),(shift$2),s($@))',a$1,,`c($1,($2),s($@))',a$2,,`c(($1),s(,$@))',`eval($1<$2)')')d(_,`I($3,,`) eval(len(l(2$1))*len(l(6$1))',`+($2)*c($3,$4)_(S($3f(S($4$1))),$2+1s(s($@)))')')eval(_(`,((2)),((6))',1,translit((include(i)),[
](),(,))))

dnl score 369
define(d,defn(define))d(f,$1)d(a)d(S,s(s($@)))d(s,defn(shift))d(C,+c($1,(($2))))d(c,`ifelse($1,$2,`c(S($@))',$1,(),1,$2,(),0,a$1a$2,,`c(f$1,f$2,(s$1),(s$2),S($@))',a$1,,`c($1,($2),S($@))',a$2,,`c(($1),s($@))',`($1<$2)')')d(_,`ifelse($3,,`) eval((1$1)',`+($2)*c($3,$4)_(C($3,2)C($4,2)`$1'C($3,6)C($4,6),$2+1S(S($@)))')')eval(_(`)*(2',1,translit((include(i)),[
](),(,))))

dnl score 351
define(d,defn(define))d(f,$1)d(a)d(S,s(s($@)))d(s,defn(shift))d(c,`ifelse($1,$2,`c(S($@))',$1,(),+1,$2,(),+0,a$1a$2,,`c(f$1,f$2,(s$1),(s$2),S($@))',a$1,,`c($1,($2),S($@))',a$2,,`c(($1),s($@))',+($1<$2))')d(_,`ifelse($3,,`) eval((1$1)',`c($3,$4)*($2)_(c($3,2)c($4,2)`$1'c($3,6)c($4,6),$2+1S(S($@)))')')eval(_(`)*(2',1,translit((include(i)),[
](),(,))))

]]changequote)dnl
dnl score 336
define(d,defn(define))d(f,$1)d(a)d(s,defn(shift))d(c,`ifelse($1,$2,`c(',$1,(),`+1a(',$2,(),`+0a(',a$1a$2,,`c(f$1,f$2,(s$1),(s$2),',a$1,,`c($1,($2),',a$2,,`c(($1),$2,',`+($1<$2)a(')s(s($@)))')eval(translit(_(,1,include(i)),[
],(,)d(_,`ifelse($3,,`) eval((1$1)*(2',`c($3,$4)*($2)_(c($3,2)c($4,2)$1,$2+1s(s(s(s($@)))))c($3,6)c($4,6)')'))))
