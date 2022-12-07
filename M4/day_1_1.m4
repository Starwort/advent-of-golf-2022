dnl score 147
define(_,`ifelse($2,,`eval($1',$3,,`_(eval(($2>$1)*$2+($2<=$1)*$1)',`_($1,eval($3+$2)'),shift(shift(shift($@))))')_(0,translit(include(i),`
',`,'))
