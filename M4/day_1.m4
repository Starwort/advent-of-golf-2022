changequote([[,]])ifelse([[
dnl score 276
define(_,`ifelse($4,,`$1 eval($1+$2+$3',$5,,`_(eval(($4>$1)*$4+($4<=$1)*$1),eval(($4>$1)*$1+($4<=$1&&$4>$2)*$4+($4<=$2)*$2),eval(($4>$2)*$2+($4<=$2&&$4>$3)*$4+($4<=$3)*$3)',`_($1,$2,$3,eval($5+$4)'),shift(shift(shift(shift(shift($@))))))')_(0,0,0,translit(include(i),`
',`,'))

dnl score 221
define(o,`$1 eval($1+$2+$3)')define(m,`ifelse(eval($1>$2+0),1,``$1,$2,$3'',``$2,'m($1,$3,$4)')')define(_,`ifelse($2,,`o($1',$3,,`_(m($2,$1)',`_(`$1',eval($3+$2)'),shift(shift(shift($@))))')_(,translit(include(i),`
',`,'))

]]changequote)dnl
dnl score 219
define(m,`ifelse(eval($1>$2+0),1,``$1,$2,$3'',``$2,'m($1,$3,$4)')')define(_,`ifelse($2,,`o($1',$3,,`_(m($2,$1)',`_(`$1',eval($3+$2)'),shift(shift(shift($@))))')_(,translit(include(i),define(o,`$1 eval($1+$2+$3)')
,`,'))
