changequote([[,]])ifelse([[
dnl score 196
define(_,`ifelse($3,,`eval($1) eval($2)',`_($1+($3>=$5&$4<=$6|$5>=$3&$6<=$4),$2+($5<=$4&$6>=$3|$3<=$6&$4>=$5),shift(shift(shift(shift(shift(shift($@)))))))')')_(,,translit((include(i)),-
(),`,,'))

dnl score 170
eval(define(_,`ifelse($1,,`) eval(',`+($1>=$3&$2<=$4|$3>=$1&$4<=$2)_(shift(shift(shift(shift($@)))))+($3<=$2&$4>=$1|$1<=$4&$2>=$3)')')_(translit((include(i)),-
(),`,,')))

dnl score 156
eval(define(_,`ifelse($1,,`) eval(',`+($1>=$3&$2<=$4|$3>=$1&$4<=$2)_(shift(shift(shift(shift($@)))))+($3<=$2&$4>=$1)')')_(translit((include(i)),-
(),`,,')))

]]changequote)dnl
dnl score 152
eval(translit(_(include(i)),-
,`,,'define(_,`ifelse($1,,`) eval(',`+($1>=$3&$2<=$4|$3>=$1&$4<=$2)_(shift(shift(shift(shift($@)))))+($3<=$2&$4>=$1)')')))
