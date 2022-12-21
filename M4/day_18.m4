changequote([[,]])ifelse([[
dnl score 483
define(d,defn(pushdef))translit(_(include(i)),d(_,`ifelse($1,,,`d(`p',`$1,$2,$3')d($1.$2.$3)_(shift(shift(shift($@))))')')
,`,')eval(d(f,`ifdef(`p',`c(p)popdef(`p')f ')')d(c,+6s(I($1),$2,$3)s($1,I($2),$3)s($1,$2,I($3)))d(I,defn(incr))d(s,`ifdef($1.$2.$3,-2)')f) len(d(g,`d($1/$2/$3)h(I($1),$2,$3)h(decr($1),$2,$3)h($1,I($2),$3)h($1,decr($2),$3)h($1,$2,I($3))h($1,$2,decr($3))')d(x,`$1,-2,,$1,21,,')d(h,`ifelse(x($1)x($2)x($3)`ifdef($1.$2.$3,.,`ifdef($1/$2/$3,,`g($@)')')')')g(0,0,0))

dnl score 343
define(d,defn(define))d(e,E($1).E($2).E($3))d(E,`eval(($1)%21)')eval(translit(_(include(i)),d(_,`ifelse($1,,,`d(e($@))_(shift(shift(shift($@))))c($@)')')
,`,'d(c,+6s(1+$@)s($1,$2+1,$3)s($1,$2,$3+1))d(s,`ifdef(e($@),-2)'))) len(d(h,`ifdef(e($@),.,`ifdef(/e($@),,`d(/e($@))h(1+$@)h(20+$@)h($1,$2+1,$3)h($1,$2+20,$3)h($@+1)h($@+20)')')')h(0,0,0))

]]changequote)dnl
dnl score 338, requires no trailing newline in input
define(d,defn(define))d(e,E($1).E($2).E($3))d(E,`eval(($1)%21)')eval(translit(_(include(i)``d(`_')''),d(_,`d(e($@))_(shift(shift(shift($@))))c($@)')
,`,'d(c,+6s(1+$@)s($1,$2+1,$3)s($1,$2,$3+1))d(s,`ifdef(e($@),-2)'))) len(d(h,`ifdef(e($@),.,`ifdef(/e($@),,`d(/e($@))h(1+$@)h(20+$@)h($1,$2+1,$3)h($1,$2+20,$3)h($@+1)h($@+20)')')')h(0,0,0))
