#! /bin/bash
# 185 characters
declare -A x=([AX]=43 [AY]=84 [AZ]=38 [BX]=11 [BY]=55 [BZ]=99 [CX]=72 [CY]=26 [CZ]=67);f()(return ${x[$c$d]:$1:($1+1)};);while read c d;do f 0;a=$[a+$?];f 1;b=$[b+$?];done<$1;echo $a $b