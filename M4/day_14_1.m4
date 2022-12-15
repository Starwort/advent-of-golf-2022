changequote([[,]])ifelse([[
dnl score 453
define(d,defn(define))d(I,defn(incr))d(e,defn(ifelse))d(E,$*)d(t,`e($1,$2,`E',eval($1>$2),1,decr,I)($1)')d(y,0)d(b,`d($1.$2)e(eval($2>=y),1,`d(`y',I($2))')')translit(_(include(i)),d(_,`e($1,,`E(E',$3,->,`b($@)e($1.$2,$4.$5,`_(shift',`_(t($1,$4),t($2,$5),E')',`_(E')(shift(shift($@))))')
 ,`,,')d(f,`e($2,y,,`ifdef($1.$2,`ifdef(decr($1).$2,`ifdef(I($1).$2,`d($1.decr($2)).f(500,1)',`f(I($1),I($2))')',`f(decr($1),I($2))')',`f($1,I($2))')')')len(f(500,1))

]]changequote)dnl
dnl score 427
define(d,defn(define))d(e,defn(ifelse))d(E,$*)d(t,`e($1,$2,`E',eval($1>$2),1,decr,incr)($1)')d(y,0)d(b,`d($1.$2)e(eval($2>=y),1,`d(`y',incr($2))')')translit(_(include(i)),d(_,`e($1,,`E(E',$3,->,`b($@)e($1.$2,$4.$5,`_(shift',`_(t($1,$4),t($2,$5),E')',`_(E')(shift(shift($@))))')
 ,`,,')d(c,`ifdef($1.$2,,`f($1,incr($2))')')d(a,`d($1.decr($2)).')d(f,`e($2,y,`d(`f')d(`a')',`c($@)c(decr($1),$2)c(incr($1),$2)a($@)')')len(f(500,1))
