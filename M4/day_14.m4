changequote([[,]])ifelse([[
dnl score 517
define(d,defn(define))d(I,defn(incr))d(e,defn(ifelse))d(E,$*)d(t,`e($1,$2,`E',eval($1>$2),1,decr,I)($1)')d(y,0)d(b,`d($1.$2)e(eval($2>y),1,`d(`y',$2)')')translit(_(include(i)),d(_,`e($1,,`E(E',$3,->,`b($@)e($1.$2,$4.$5,`_(shift',`_(t($1,$4),t($2,$5),E')',`_(E')(shift(shift($@))))')
 ,`,,')d(o,-1)d(c,`o d(`c')')d(a,`d(`o',I(o))f(500,0,1)')d(f,`e($2,y,`c()')e(ifdef(500.0,1),1,`o(',$3,I(I(y)),`d($1.$2)a(',`ifdef($1.$3,`ifdef(decr($1).$3,`ifdef(I($1).$3,`d($1.$2)a(',`f(I($1)')',`f(decr($1)')',`f($1')'),$3,I($3))')a

]]changequote)dnl
dnl score 433
define(d,defn(define))d(I,defn(incr))d(e,defn(ifelse))d(E,$*)d(t,`eval($1+($2>$1)-($1>$2))')d(y,0)d(b,`d($1.$2)e(eval($2<y),0,`d(`y',I($2))')')translit(_(include(i)),d(_,`e($1,,`E(E',$3,->,`b($@)e($1.$2,$4.$5,`_(shift',`_(t($1,$4),t($2,$5),E')',`_(E')(shift(shift($@))))')d(o,0)
 ,`,,')d(c,`ifdef($1.$2,,`f($1,I($2))')')d(C,`o d(`C')')d(f,`e($2,y,`C()')e($2,I(y),,`c($@)c(decr($1),$2)c(I($1),$2)')d($1.decr($2))d(`o',I(o))')f(500,1)o
