changequote([[,]])ifelse([[
dnl score 551
define(u,`ifelse($1,.,,`pushdef(`s$2',$1)pushdef(`w$2',$1)')')define(x,`ifelse($1,0,,`pushdef(`$3',$2)popdef(`$2')x(decr($1),`$2',`$3')')')define(p,`translit($1,eft.mor,`(,,'))')define(s,`popdef(`p')define(`s',`u')_')pushdef(`p',`pushdef(`s',`translit(`u(B,1)u(F,2)u(J,3)u(N,4)u(R,5)u(V,6)u(Z,7)u(d,8)u(h,9)',A-Za-j,`$1')popdef(`s')s()')')define(_,`ifelse($1,,`s()',`p(`$1')_')(shift($@))')_(translit(include(i),define(v,`x($1,`s$2',`s$3')x($1,`w$2',`y')x($1,`y',`w$3')')`
 ',`,.'))s1`'s2`'s3`'s4`'s5`'s6`'s7`'s8`'s9 w1`'w2`'w3`'w4`'w5`'w6`'w7`'w8`'w9

dnl score 505
define(t,defn(pushdef))t(q,defn(translit))t(u,`ifelse($1,.,,`t(`s$2',$1)t(`w$2',$1)')')t(x,`ifelse($1,0,,`t(`$3',$2)popdef(`$2')x(decr($1),`$2',`$3')')')t(p,`q($1,eft.mor,`(,,'))')t(s,`popdef(`p')t(`s',`u')_')t(`p',`t(`s',`q(`u(B,1)u(F,2)u(J,3)u(N,4)u(R,5)u(V,6)u(Z,7)u(d,8)u(h,9)',A-Za-j,`$1')popdef(`s')s()')')t(_,`ifelse($1,,`s()',`p(`$1')_')(shift($@))')_(q(include(i),t(v,`x($1,`s$2',`s$3')x($1,`w$2',`y')x($1,`y',`w$3')')
 ,`,.'))s1`'s2`'s3`'s4`'s5`'s6`'s7`'s8`'s9 w1`'w2`'w3`'w4`'w5`'w6`'w7`'w8`'w9

dnl score 463
define(t,defn(pushdef))t(p,q($1l,eftl-r,(,,)))t(q,defn(translit))t(u,`y($1,n,,`t(`r$2',$1)t(`w$2',$1)')')t(s,`popdef(`p')t(`s',y)_')t(`p',`t(`s',`q(`u(B,1)u(F,2)u(J,3)u(N,4)u(R,5)u(V,6)u(Z,7)u(^,8)u(b,9)',A-b,$1)popdef(`s')s()')')t(_,`y($1,,`s()',`p($1)_')(shift($@))')_(q(include(i),t(v,x($1,r,$2,$3)x($1,w,$2,0)x($1,w,0,$3))t(x,`y(eval($1),0,,`t(`$2$4',$2$3)popdef(`$2$3')x(-1+$*)')')
 ,`,n't(y,defn(ifelse))))t(z,`$2$1`'y($1,9,,`z(incr($1),$2)')')z(1,r) z(1,w)

]]changequote)dnl
dnl score 440
define(t,defn(pushdef))t(y,defn(ifelse))t(p,`translit($1l,eftl-r,(,,))')t(u,`y($2,n,,`t(`r$1',$2)t(`w$1',$2)')')t(s,`popdef(`p')t(`s',y)_')t(`p',`t(`s',`z(1,`u(',`,substr($1,eval',`*4-3),1)')popdef(`s')s()')')t(_,`y($1,,`s()',`p($1)_')(shift($@))')_(translit(include(i),t(v,x($*,r)x($1,$2,0,w)x($1,0,$3,w))t(x,`y(eval($1),0,,`t(`$4$3',$4$2)popdef(`$4$2')x(~-$*)')')
 ,`,n't(z,`$2$1$3($1$4)`'y($1,9,,`z(incr($1),shift($@))')')))z(1,r) z(1,w)
