dnl score 133
define(_,`ifelse($2,,$1,`+($1>=$3&$2<=$4|$3>=$1&$4<=$2)_(shift(shift(shift(shift($@)))))')')eval(_(translit((include(i)),-
(),`,,')))
