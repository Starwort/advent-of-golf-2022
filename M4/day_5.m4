changequote([[,]])ifelse([[
dnl score 551
define(u,`ifelse($1,.,,`pushdef(`s$2',$1)pushdef(`w$2',$1)')')define(x,`ifelse($1,0,,`pushdef(`$3',$2)popdef(`$2')x(decr($1),`$2',`$3')')')define(p,`translit($1,eft.mor,`(,,'))')define(s,`popdef(`p')define(`s',`u')_')pushdef(`p',`pushdef(`s',`translit(`u(B,1)u(F,2)u(J,3)u(N,4)u(R,5)u(V,6)u(Z,7)u(d,8)u(h,9)',A-Za-j,`$1')popdef(`s')s()')')define(_,`ifelse($1,,`s()',`p(`$1')_')(shift($@))')_(translit(include(i),define(v,`x($1,`s$2',`s$3')x($1,`w$2',`y')x($1,`y',`w$3')')`
 ',`,.'))s1`'s2`'s3`'s4`'s5`'s6`'s7`'s8`'s9 w1`'w2`'w3`'w4`'w5`'w6`'w7`'w8`'w9

]]changequote)dnl
dnl score 505
define(t,defn(pushdef))t(q,defn(translit))t(u,`ifelse($1,.,,`t(`s$2',$1)t(`w$2',$1)')')t(x,`ifelse($1,0,,`t(`$3',$2)popdef(`$2')x(decr($1),`$2',`$3')')')t(p,`q($1,eft.mor,`(,,'))')t(s,`popdef(`p')t(`s',`u')_')t(`p',`t(`s',`q(`u(B,1)u(F,2)u(J,3)u(N,4)u(R,5)u(V,6)u(Z,7)u(d,8)u(h,9)',A-Za-j,`$1')popdef(`s')s()')')t(_,`ifelse($1,,`s()',`p(`$1')_')(shift($@))')_(q(include(i),t(v,`x($1,`s$2',`s$3')x($1,`w$2',`y')x($1,`y',`w$3')')
 ,`,.'))s1`'s2`'s3`'s4`'s5`'s6`'s7`'s8`'s9 w1`'w2`'w3`'w4`'w5`'w6`'w7`'w8`'w9
