changequote([[,]])ifelse([[
dnl score 424
define(D,defn(define))D(A,`shift(shift($@))')D(a)D(e)D(u,`ifelse($2,,$1,`u(eval($1-($1-($2))*($2<$1&$2+70000000-(a)>29999999)),A($@))')')D(_,`ifelse($2$1,0,`eval(e) u(o)',$2,,`_($1,S,cd,..)',$2$4,S..,`D(`e',e+(a)*(a<100000))D(`o',a`,'defn(`o'))D(`a',a popdef(`a')a)_(decr($1),A(A($@)))',$2,S,`pushdef(`a',+0)_(incr($1),A(A(A($@))))',$2,dir,`_($1,A(A(,$@)))',`D(`a',a+$2)_($1,A(A(,$@)))')')_(0,translit(include(i),$
 ,`S,,'))

dnl score 407
define(D,defn(define))D(A,`shift(shift($@))')D(a)D(e)D(u,`ifelse($2,,$1,`u(eval($1-($1-($2))*($2<$1&$2+40000001>a)),A($@))')')D(_,`ifelse($2$1,,`eval(e) u(o)',$2,,`_($1,S,cd,..)',$2$4,S..,`D(`e',e+(a)*(a<100000))D(`o',a`,'defn(`o'))D(`a',a popdef(`a')a)_(substr($1,1),A(A($@)))',$2,S,`pushdef(`a')_($1.,A(A(A($@))))',$2,dir,`_($1,A(A(,$@)))',`D(`a',a+$2)_($1,A(A(,$@)))')')_(,translit(include(i),$
 ,`S,,'))

dnl score 397
define(D,defn(define))D(A,`shift(shift($@))')D(a)D(e)D(u,`ifelse($2,,$1,`u(eval($1+($2-$1)*($2<$1&$2+40000001>a)),A($@))')')D(_,`ifelse($2$1,,`eval(e) u(o)',$2,,`_($1,S,cd,..)',$2$4,S..,`D(`e',e+(a)*(a<100000))D(`o',a`,'defn(`o'))D(`a',a popdef(`a')a)_(u$1,A(A($@)))',$2,S,`pushdef(`a')_(($1),A(A(A($@))))',$2,dir,`_($1,A(A(,$@)))',`D(`a',a+$2)_($1,A(A(,$@)))')')_(,translit(include(i),$
 ,`S,,'))

dnl score 384
define(D,defn(define))D(A,`shift(shift($@))')D(o,a)D(a)D(e)D(y,$1)D(u,`eval($1+($2-$1)*($2<$1&$2+40000001>a))')D(_,`ifelse($2$1,,`eval(e) o',$2,,`_($1,S,cd,..)',$2$4,S..,`D(`e',e+(a)*(a<100000))D(`o',`u'(defn(`o'),a))D(`a',a popdef(`a')a)_(y$1,A(A($@)))',$2,S,`pushdef(`a')_(($1),A(A(A($@))))',$2,dir,`_($1,A(A(,$@)))',`D(`a',a+$2)_($1,A(A(,$@)))')')_(,translit(include(i),$
 ,`S,,'))

dnl score 370
define(D,defn(define))D(A,a(a(a(a($@)))))D(a,defn(shift))D(o,$1)D(e)D(u,`eval($1+($2-$1)*($2<$1&$2+40000001>$3))')D(_,`ifelse($3$2,,`eval(e) o($1,$1)',$3,,`_($1,$2,S,cd,..)',$3$5,S..,`D(`e',e+($1)*($1<100000))D(`o',`u'(defn(`o'),$1,`$'2))$1,a$2,a(A($@)))',$3,S,`_($1+ _(,(,$2),A(A(,$@)))',$3,dir,`_($1,$2,A($@))',`_($1+$3,$2,A($@))')')_(,,translit(include(i),$
 ,`S,,'))

]]changequote)dnl
dnl score 362
define(D,defn(pushdef))D(A,a(a(a(a($@)))))D(u,o($1($3+($2-$3)*($2<$3&$2+40000001>y)),$1($4+($2)*($2<100000))))D(o,$2 $1)D(_,`ifelse($3$2,,$1,$3,,`_($1,$2,$,,..)',$3$5,$..,`D(`o',`popdef(`o')u(eval,$1,$'@`)')+$1,a$2,a(A($@)))',$3,$,`_($1_(0,(,$2),A(A(,$@)))',$3,dir,`_($1,$2,A($@))',`_($1+$3,$2,A($@))')')D(y,_(,,translit(include(i),D(a,defn(shift))
 ,`,,')))o(y)
