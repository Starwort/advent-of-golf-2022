dnl score 173
define(m,`translit($1,$1,A-N)')define(_,`ifelse($3,ABCDEFGHIJKLMN,eval($1+12),$3,ABCD,`eval($1+3) _($1,14,,.$4)',`_(incr($1),$2,m(substr($4,$1,$2)),$4)')')_(0,4,,include(i))
