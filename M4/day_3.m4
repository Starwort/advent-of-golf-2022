changequote([[,]])ifelse([[
dnl score 376
define(s_,`+index(.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ,substr($1,0,1))')define(f_,`translit(``$1'',`$2a-zA-Z',`$2')')define(p_,`s_(f_(substr($1,0,eval(len($1)/2)),substr($1,eval(len($1)/2))))')define(i_,`ifelse($3,,`eval($1) eval($2)',`$0($1p_($3)p_($4)p_($5),$2s_(f_(f_($3,$4),$5)),shift(shift(shift(shift(shift($@))))))')')i_(,,translit(include(i),`
',`,'))

dnl score 344
define(a,`+index(..bcd.fgh.jklmn.pqrst.vwx.z.BCD.FGH.JKLMN.PQRST.VWX.Z,substr($1,0,1))')define(e,`translit($1A,$2A-z,$2_)')define(o,`a(e(substr($1,0,eval(len($1)/2)),substr($1,eval(len($1)/2))))')define(u,`ifelse($3,,`$1',`u(o($2)o($3)o($4)`$1'a(e(e($2,$3),$4)),shift(shift(shift(shift($@)))))')')eval(u(`) eval(',translit(include(i),`
',`,')))

dnl score 327
define(a,`+index(..bcd.fgh.jklmn.pqrst.vwx.z.BCD.FGH.JKLMN.PQRST.VWX.Z,substr($1,0,1))')define(e,`translit($1A,$2A-z,$2_)')define(o,`a(e(substr($1,0,eval(len($1)/2)),substr($1,eval(len($1)/2))))')define(u,`ifelse($1,,`) eval(',`o($1)o($2)o($3)u(shift(shift(shift($@))))a(e(e($1,$2),$3))')')eval(u(translit(include(i),`
',`,')))

]]changequote)dnl
dnl score 325
define(a,`+index(..bcd.fgh.jklmn.pqrst.vwx.z.BCD.FGH.JKLMN.PQRST.VWX.Z,substr($1,0,1))')define(o,`a(e(substr($1,0,eval(len($1)/2)),substr($1,eval(len($1)/2))))')define(u,`ifelse($1,,`) eval(',`o($1)o($2)o($3)u(shift(shift(shift($@))))a(e(e($1,$2),$3))')')eval(u(translit(include(i),define(e,`translit($1A,$2A-z,$2_)')
,`,')))
